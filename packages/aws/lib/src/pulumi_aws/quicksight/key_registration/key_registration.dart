import 'package:pulumi/pulumi.dart' as pulumi;
import '../key_registration_key_registration/key_registration_key_registration.dart';
import 'key_registration_args.dart';

/// Registers customer managed keys in a Amazon QuickSight account.
///
/// > Deletion of this resource clears all CMK registrations from a QuickSight account. QuickSight then uses AWS owned keys to encrypt your resources.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import QuickSight key registration using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/keyRegistration:KeyRegistration example "012345678901"
/// ```
class KeyRegistration extends pulumi.CustomResource {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Registered keys. See key_registration.
  late final pulumi.Output<List<KeyRegistrationKeyRegistration>>
      keyRegistrations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  KeyRegistration(
    String name, {
    KeyRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/keyRegistration:KeyRegistration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.keyRegistrations =
        registerOutput<List<KeyRegistrationKeyRegistration>>(
            'keyRegistrations');
    this.region = registerOutput<String>('region');
  }
}
