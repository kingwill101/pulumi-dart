import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_identity_args.dart';

/// Generate folder service identity for a service.
///
/// > **Note:** Once created, this resource cannot be updated or destroyed. These
/// actions are a no-op.
///
/// > **Note:** This resource can be used to retrieve the emails of the [Google-managed folder service accounts](https://cloud.google.com/iam/docs/service-agents)
/// of the APIs that Google has configured with a Service Identity. You can run `gcloud beta services identity create --service SERVICE_NAME.googleapis.com --folder FOLDER` to
/// verify if an API supports this.
///
/// To get more information about Service Identity, see:
///
/// * [API documentation](https://cloud.google.com/service-usage/docs/reference/rest/v1beta1/services/generateServiceIdentity)
///
/// ## Example Usage
///
/// ### Folder Service Identity Basic
///
///
///
/// ## Import
///
/// This resource does not support import.
class ServiceIdentity extends pulumi.CustomResource {
  /// The email address of the Google managed service account.
  late final pulumi.Output<String> email;

  /// The folder in which the resource belongs.
  late final pulumi.Output<String> folder;

  /// The Identity of the Google managed service account in the form 'serviceAccount:{email}'. This value is often used to refer to the service account in order to grant IAM permissions.
  late final pulumi.Output<String> member;

  /// The service to generate identity for.
  ///
  /// - - -
  late final pulumi.Output<String> service;

  ServiceIdentity(
    String name, {
    ServiceIdentityArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:folder/serviceIdentity:ServiceIdentity',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.email = registerOutput<String>('email');
    this.folder = registerOutput<String>('folder');
    this.member = registerOutput<String>('member');
    this.service = registerOutput<String>('service');
  }
}
