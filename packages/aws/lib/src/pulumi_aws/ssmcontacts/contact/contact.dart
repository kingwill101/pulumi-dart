import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_args.dart';

/// Resource for managing an AWS SSM Contact.
///
/// > **NOTE:** A contact implicitly depends on a replication set. If you configured your replication set in Pulumi, we recommend you add it to the `depends_on` argument for the Contact Resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage With All Fields
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the contact.
///
///
/// Using `pulumi import`, import SSM Contact using the `ARN`. For example:
///
/// ```sh
/// $ pulumi import aws:ssmcontacts/contact:Contact example {ARNValue}
/// ```
class Contact extends pulumi.CustomResource {
  /// A unique and identifiable alias for the contact or escalation plan. Must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), and hyphens (`-`).
  late final pulumi.Output<String> alias;

  /// The Amazon Resource Name (ARN) of the contact or escalation plan.
  late final pulumi.Output<String> arn;

  /// Full friendly name of the contact or escalation plan. If set, must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), hyphens (`-`), periods (`.`), and spaces.
  late final pulumi.Output<String?> displayName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The type of contact engaged. A single contact is type PERSONAL and an escalation
  /// plan is type ESCALATION.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  Contact(
    String name, {
    ContactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssmcontacts/contact:Contact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String>('alias');
    this.arn = registerOutput<String>('arn');
    this.displayName = registerOutput<String?>('displayName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
