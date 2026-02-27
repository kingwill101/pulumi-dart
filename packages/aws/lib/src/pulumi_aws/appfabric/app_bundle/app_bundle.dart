import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_bundle_args.dart';

/// Resource for managing an AWS AppFabric AppBundle.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the AppFabric app bundle.
///
///
/// Using `pulumi import`, import AppFabric AppBundle using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:appfabric/appBundle:AppBundle example arn:aws:appfabric:[region]:[account]:appbundle/ee5587b4-5765-4288-a202-xxxxxxxxxx
/// ```
class AppBundle extends pulumi.CustomResource {
  /// ARN of the AppBundle.
  late final pulumi.Output<String> arn;

  /// The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) key to use to encrypt the application data. If this is not specified, an AWS owned key is used for encryption.
  late final pulumi.Output<String?> customerManagedKeyArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  AppBundle(
    String name, {
    AppBundleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/appBundle:AppBundle',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.customerManagedKeyArn =
        registerOutput<String?>('customerManagedKeyArn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
