import 'package:pulumi/pulumi.dart' as pulumi;
import '../key_key_attribute/key_key_attribute.dart';
import '../key_timeouts/key_timeouts.dart';
import 'key_paymentcryptography_args.dart';

/// Resource for managing an AWS Payment Cryptography Control Plane Key.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Payment Cryptography key.
///
///
/// Using `pulumi import`, import Payment Cryptography Control Plane Key using the `arn:aws:payment-cryptography:us-east-1:123456789012:key/qtbojf64yshyvyzf`. For example:
///
/// ```sh
/// $ pulumi import aws:paymentcryptography/key:Key example arn:aws:payment-cryptography:us-east-1:123456789012:key/qtbojf64yshyvyzf
/// ```
class KeyPaymentcryptography extends pulumi.CustomResource {
  /// ARN of the key.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<int> deletionWindowInDays;

  /// Whether to enable the key.
  late final pulumi.Output<bool> enabled;

  /// Whether the key is exportable from the service.
  late final pulumi.Output<bool> exportable;

  /// Role of the key, the algorithm it supports, and the cryptographic operations allowed with the key.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<KeyKeyAttribute>?> keyAttributes;

  /// Key check value (KCV) is used to check if all parties holding a given key have the same key or to detect that a key has changed.
  late final pulumi.Output<String> keyCheckValue;

  /// Algorithm that AWS Payment Cryptography uses to calculate the key check value (KCV).
  late final pulumi.Output<String> keyCheckValueAlgorithm;

  /// Source of the key material.
  late final pulumi.Output<String> keyOrigin;

  /// State of key that is being created or deleted.
  late final pulumi.Output<String> keyState;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<KeyTimeouts?> timeouts;

  KeyPaymentcryptography(
    String name, {
    KeyPaymentcryptographyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:paymentcryptography/key:Key',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deletionWindowInDays = registerOutput<int>('deletionWindowInDays');
    this.enabled = registerOutput<bool>('enabled');
    this.exportable = registerOutput<bool>('exportable');
    this.keyAttributes =
        registerOutput<List<KeyKeyAttribute>?>('keyAttributes');
    this.keyCheckValue = registerOutput<String>('keyCheckValue');
    this.keyCheckValueAlgorithm =
        registerOutput<String>('keyCheckValueAlgorithm');
    this.keyOrigin = registerOutput<String>('keyOrigin');
    this.keyState = registerOutput<String>('keyState');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<KeyTimeouts?>('timeouts');
  }
}
