import 'package:pulumi/pulumi.dart';
import 'service_identity_args2.dart';

/// Generate service identity for a service.
///
/// > **Note:** Once created, this resource cannot be updated or destroyed. These
/// actions are a no-op.
///
/// > **Note:** This resource can be used to retrieve the emails of the [Google-managed service accounts](https://cloud.google.com/iam/docs/service-agents)
/// of the APIs that Google has configured with a Service Identity. You can run `gcloud beta services identity create --service SERVICE_NAME.googleapis.com` to
/// verify if an API supports this.
///
/// To get more information about Service Identity, see:
///
/// * [API documentation](https://cloud.google.com/service-usage/docs/reference/rest/v1beta1/services/generateServiceIdentity)
///
/// ## Example Usage
///
/// ### Service Identity Basic
///
///
///
/// ## Import
///
/// This resource does not support import.
class ServiceIdentity2 extends CustomResource {
  /// The email address of the Google managed service account.
  late final Output<String> email;

  /// The Identity of the Google managed service account in the form 'serviceAccount:{email}'. This value is often used to refer to the service account in order to grant IAM permissions.
  late final Output<String> member;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The service to generate identity for.
  ///
  /// - - -
  late final Output<String> service;

  ServiceIdentity2(
    String name, {
    ServiceIdentityArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:projects/serviceIdentity:ServiceIdentity',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.email = registerOutput<String>('email');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.service = registerOutput<String>('service');
  }
}
