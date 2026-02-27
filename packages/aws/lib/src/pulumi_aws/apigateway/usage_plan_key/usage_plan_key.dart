import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_plan_key_args.dart';

/// Provides an API Gateway Usage Plan Key.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS API Gateway Usage Plan Key using the `USAGE-PLAN-ID/USAGE-PLAN-KEY-ID`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/usagePlanKey:UsagePlanKey key 12345abcde/zzz
/// ```
class UsagePlanKey extends pulumi.CustomResource {
  /// Identifier of the API key resource.
  late final pulumi.Output<String> keyId;

  /// Type of the API key resource. Currently, the valid key type is API_KEY.
  late final pulumi.Output<String> keyType;

  /// Name of a usage plan key.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Id of the usage plan resource representing to associate the key to.
  late final pulumi.Output<String> usagePlanId;

  /// Value of a usage plan key.
  late final pulumi.Output<String> value;

  UsagePlanKey(
    String name, {
    UsagePlanKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/usagePlanKey:UsagePlanKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.keyId = registerOutput<String>('keyId');
    this.keyType = registerOutput<String>('keyType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.usagePlanId = registerOutput<String>('usagePlanId');
    this.value = registerOutput<String>('value');
  }
}
