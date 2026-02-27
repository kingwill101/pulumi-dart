import 'package:pulumi/pulumi.dart';
import 'upload_args.dart';

/// Provides a resource to manage AWS Device Farm Uploads.
///
/// > **NOTE:** AWS currently has limited regional support for Device Farm (e.g., `us-west-2`). See [AWS Device Farm endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/devicefarm.html) for information on supported regions.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Device Farm upload.
///
///
/// Using `pulumi import`, import DeviceFarm Uploads using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/upload:Upload example arn:aws:devicefarm:us-west-2:123456789012:upload:4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class Upload extends CustomResource {
  /// The Amazon Resource Name of this upload.
  late final Output<String> arn;

  /// The upload's category.
  late final Output<String> category;

  /// The upload's content type (for example, application/octet-stream).
  late final Output<String?> contentType;

  /// The upload's metadata. For example, for Android, this contains information that is parsed from the manifest and is displayed in the AWS Device Farm console after the associated app is uploaded.
  late final Output<String> metadata;

  /// The upload's file name. The name should not contain any forward slashes (/). If you are uploading an iOS app, the file name must end with the .ipa extension. If you are uploading an Android app, the file name must end with the .apk extension. For all others, the file name must end with the .zip file extension.
  late final Output<String> name;

  /// The ARN of the project for the upload.
  late final Output<String> projectArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The upload's upload type. See [AWS Docs](https://docs.aws.amazon.com/devicefarm/latest/APIReference/API_CreateUpload.html#API_CreateUpload_RequestSyntax) for valid list of values.
  late final Output<String> type;

  /// The presigned Amazon S3 URL that was used to store a file using a PUT request.
  late final Output<String> url;

  Upload(
    String name, {
    UploadArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/upload:Upload',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.category = registerOutput<String>('category');
    this.contentType = registerOutput<String?>('contentType');
    this.metadata = registerOutput<String>('metadata');
    this.name = registerOutput<String>('name');
    this.projectArn = registerOutput<String>('projectArn');
    this.region = registerOutput<String>('region');
    this.type = registerOutput<String>('type');
    this.url = registerOutput<String>('url');
  }
}
