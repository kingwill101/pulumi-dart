import 'package:pulumi/pulumi.dart';
import 'activation_args.dart';

/// Registers an on-premises server or virtual machine with Amazon EC2 so that it can be managed using Run Command.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS SSM Activation using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/activation:Activation example e488f2f6-e686-4afb-8a04-ef6dfEXAMPLE
/// ```
///
/// > **Note:** The `activation_code` attribute cannot be imported.
class Activation extends CustomResource {
  /// The code the system generates when it processes the activation.
  late final Output<String> activationCode;

  /// The description of the resource that you want to register.
  late final Output<String?> description;

  /// UTC timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) by which this activation request should expire. The default value is 24 hours from resource creation time. This provider will only perform drift detection of its value when present in a configuration.
  late final Output<String> expirationDate;

  /// If the current activation has expired.
  late final Output<bool> expired;

  /// The IAM Role to attach to the managed instance.
  late final Output<String> iamRole;

  /// The default name of the registered managed instance.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The number of managed instances that are currently registered using this activation.
  late final Output<int> registrationCount;

  /// The maximum number of managed instances you want to register. The default value is 1 instance.
  late final Output<int?> registrationLimit;

  /// A map of tags to assign to the object. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Activation(
    String name, {
    ActivationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/activation:Activation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activationCode = registerOutput<String>('activationCode');
    this.description = registerOutput<String?>('description');
    this.expirationDate = registerOutput<String>('expirationDate');
    this.expired = registerOutput<bool>('expired');
    this.iamRole = registerOutput<String>('iamRole');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.registrationCount = registerOutput<int>('registrationCount');
    this.registrationLimit = registerOutput<int?>('registrationLimit');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
