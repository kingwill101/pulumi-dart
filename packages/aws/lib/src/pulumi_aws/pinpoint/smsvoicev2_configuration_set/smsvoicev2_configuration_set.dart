import 'package:pulumi/pulumi.dart';
import 'smsvoicev2_configuration_set_args.dart';

/// Manages an AWS End User Messaging SMS Configuration Set.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import configuration sets using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/smsvoicev2ConfigurationSet:Smsvoicev2ConfigurationSet example example-configuration-set
/// ```
class Smsvoicev2ConfigurationSet extends CustomResource {
  /// ARN of the configuration set.
  late final Output<String> arn;

  /// The default message type. Must either be "TRANSACTIONAL" or "PROMOTIONAL"
  late final Output<String?> defaultMessageType;

  /// The default sender ID to use for this configuration set.
  late final Output<String?> defaultSenderId;

  /// The name of the configuration set.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Smsvoicev2ConfigurationSet(
    String name, {
    Smsvoicev2ConfigurationSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:pinpoint/smsvoicev2ConfigurationSet:Smsvoicev2ConfigurationSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.defaultMessageType = registerOutput<String?>('defaultMessageType');
    this.defaultSenderId = registerOutput<String?>('defaultSenderId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
