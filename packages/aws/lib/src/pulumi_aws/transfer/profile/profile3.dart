import 'package:pulumi/pulumi.dart';
import 'profile_args3.dart';

/// Provides a AWS Transfer AS2 Profile resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer AS2 Profile using the `profile_id`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/profile:Profile example p-4221a88afd5f4362a
/// ```
class Profile3 extends CustomResource {
  /// The ARN of the profile.
  late final Output<String> arn;

  /// The As2Id is the AS2 name as defined in the RFC 4130. For inbound ttransfers this is the AS2 From Header for the AS2 messages sent from the partner. For Outbound messages this is the AS2 To Header for the AS2 messages sent to the partner. his ID cannot include spaces.
  late final Output<String> as2Id;

  /// The list of certificate Ids from the imported certificate operation.
  late final Output<List<String>?> certificateIds;

  /// The unique identifier for the AS2 profile.
  late final Output<String> profileId;

  /// The profile type should be LOCAL or PARTNER.
  late final Output<String> profileType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  Profile3(
    String name, {
    ProfileArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/profile:Profile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.as2Id = registerOutput<String>('as2Id');
    this.certificateIds = registerOutput<List<String>?>('certificateIds');
    this.profileId = registerOutput<String>('profileId');
    this.profileType = registerOutput<String>('profileType');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
