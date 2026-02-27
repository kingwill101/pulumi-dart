import 'package:pulumi/pulumi.dart';
import '../contacts_rotation_recurrence/contacts_rotation_recurrence.dart';
import 'contacts_rotation_args.dart';

/// Provides a Terraform resource for managing a Contacts Rotation in AWS Systems Manager Incident Manager.
///
/// > **NOTE:** A rotation implicitly depends on a replication set. If you configured your replication set in Terraform, we recommend you add it to the `depends_on` argument for the Terraform Contact Resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage with Weekly Settings and Shift Coverages Fields
///
///
///
/// ### Usage with Monthly Settings Fields
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the SSM Contacts rotation.
///
///
/// Using `pulumi import`, import CodeGuru Profiler Profiling Group using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/contactsRotation:ContactsRotation example arn:aws:ssm-contacts:us-east-1:012345678910:rotation/example
/// ```
class ContactsRotation extends CustomResource {
  /// The Amazon Resource Name (ARN) of the rotation.
  late final Output<String> arn;

  /// Amazon Resource Names (ARNs) of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  late final Output<List<String>> contactIds;

  /// The name for the rotation.
  late final Output<String> name;

  /// Information about when an on-call rotation is in effect and how long the rotation period lasts. Exactly one of either `daily_settings`, `monthly_settings`, or `weekly_settings` must be populated. See Recurrence for more details.
  ///
  /// The following arguments are optional:
  late final Output<ContactsRotationRecurrence> recurrence;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The date and time, in RFC 3339 format, that the rotation goes into effect.
  late final Output<String?> startTime;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority (IANA) format.
  late final Output<String> timeZoneId;

  ContactsRotation(
    String name, {
    ContactsRotationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/contactsRotation:ContactsRotation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.contactIds = registerOutput<List<String>>('contactIds');
    this.name = registerOutput<String>('name');
    this.recurrence = registerOutput<ContactsRotationRecurrence>('recurrence');
    this.region = registerOutput<String>('region');
    this.startTime = registerOutput<String?>('startTime');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeZoneId = registerOutput<String>('timeZoneId');
  }
}
