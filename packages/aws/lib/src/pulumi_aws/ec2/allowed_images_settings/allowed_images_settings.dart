import 'package:pulumi/pulumi.dart';
import '../allowed_images_settings_image_criterion/allowed_images_settings_image_criterion.dart';
import 'allowed_images_settings_args.dart';

/// Provides EC2 allowed images settings for an AWS account. This feature allows you to control which AMIs can be used to launch EC2 instances in your account based on specified criteria.
///
/// For more information about the image criteria that can be set, see the [AWS documentation on Allowed AMIs JSON configuration](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-allowed-amis.html#allowed-amis-json-configuration).
///
/// > **NOTE:** The AWS API does not delete this resource. When you run `destroy`, the provider will attempt to disable the setting.
///
/// > **NOTE:** There is only one allowed images settings configuration per AWS account and region. Creating this resource will configure the account-level settings.
///
/// ## Example Usage
///
/// ### Enable with Amazon AMIs only
///
///
///
/// ### Enable audit mode with specific account IDs
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EC2 allowed images settings. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/allowedImagesSettings:AllowedImagesSettings example us-east-1
/// ```
class AllowedImagesSettings extends CustomResource {
  /// List of image criteria. Maximum of 10 criterion blocks allowed. See `image_criterion` below.
  late final Output<List<AllowedImagesSettingsImageCriterion>?> imageCriterions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// State of the allowed images settings. Valid values are `enabled` or `audit-mode`.
  late final Output<String> state;

  AllowedImagesSettings(
    String name, {
    AllowedImagesSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/allowedImagesSettings:AllowedImagesSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.imageCriterions =
        registerOutput<List<AllowedImagesSettingsImageCriterion>?>(
            'imageCriterions');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
  }
}
