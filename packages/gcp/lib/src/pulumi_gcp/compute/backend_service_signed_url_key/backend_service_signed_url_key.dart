import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_signed_url_key_args.dart';

/// A key for signing Cloud CDN signed URLs for Backend Services.
///
///
/// To get more information about BackendServiceSignedUrlKey, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/backendServices)
/// * How-to Guides
/// * [Using Signed URLs](https://cloud.google.com/cdn/docs/using-signed-urls/)
///
///
///
/// ## Example Usage
///
/// ### Backend Service Signed Url Key
///
///
///
///
/// ## Import
///
/// This resource does not support import.
class BackendServiceSignedUrlKey extends pulumi.CustomResource {
  /// The backend service this signed URL key belongs.
  late final pulumi.Output<String> backendService;

  /// 128-bit key value used for signing the URL. The key value must be a
  /// valid RFC 4648 Section 5 base64url encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> keyValue;

  /// Name of the signed URL key.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  BackendServiceSignedUrlKey(
    String name, {
    BackendServiceSignedUrlKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendServiceSignedUrlKey:BackendServiceSignedUrlKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendService = registerOutput<String>('backendService');
    this.keyValue = registerOutput<String>('keyValue');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
