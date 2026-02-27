import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_alias_args.dart';

/// Resource for managing an AWS Payment Cryptography Control Plane Key Alias.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Payment Cryptography Control Plane Key Alias using the `alias/4681482429376900170`. For example:
///
/// ```sh
/// $ pulumi import aws:paymentcryptography/keyAlias:KeyAlias example alias/4681482429376900170
/// ```
class KeyAlias extends pulumi.CustomResource {
  /// Name of the Key Alias.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> aliasName;

  /// ARN of the key.
  late final pulumi.Output<String?> keyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  KeyAlias(
    String name, {
    KeyAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:paymentcryptography/keyAlias:KeyAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aliasName = registerOutput<String>('aliasName');
    this.keyArn = registerOutput<String?>('keyArn');
    this.region = registerOutput<String>('region');
  }
}
