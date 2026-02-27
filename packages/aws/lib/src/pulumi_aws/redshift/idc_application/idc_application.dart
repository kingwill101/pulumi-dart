import 'package:pulumi/pulumi.dart';
import '../idc_application_authorized_token_issuer/idc_application_authorized_token_issuer.dart';
import '../idc_application_service_integration/idc_application_service_integration.dart';
import 'idc_application_args.dart';

/// Creates a new Amazon Redshift IDC application.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift endpoint access using the `redshift_idc_application_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/idcApplication:IdcApplication example example
/// ```
class IdcApplication extends CustomResource {
  /// Type of application being created. Valid values are `None` or `Lakehouse`.
  late final Output<String> applicationType;

  /// Token issuer list for the Amazon Redshift IAM Identity Center application instance. Refer to the authorized_token_issuer documentation for more details.
  late final Output<IdcApplicationAuthorizedTokenIssuer?> authorizedTokenIssuer;

  /// IAM role ARN for the Amazon Redshift IAM Identity Center application instance.
  late final Output<String> iamRoleArn;

  /// Display name for the Amazon Redshift IAM Identity Center application instance.
  late final Output<String> idcDisplayName;

  /// ARN of the IAM Identity Center instance where Amazon Redshift creates a new managed application.
  late final Output<String> idcInstanceArn;

  /// ARN for the Amazon Redshift IAM Identity Center application.
  late final Output<String> idcManagedApplicationArn;

  /// Namespace for the Amazon Redshift IAM Identity Center application instance.
  late final Output<String> identityNamespace;

  /// ARN of the Redshift application in IAM Identity Center.
  late final Output<String> redshiftIdcApplicationArn;

  /// Name of the Redshift application in IAM Identity Center.
  late final Output<String> redshiftIdcApplicationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Collection of service integrations for the Redshift IAM Identity Center application. Refer to the service_integration documentation for more details.
  late final Output<IdcApplicationServiceIntegration?> serviceIntegration;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  IdcApplication(
    String name, {
    IdcApplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/idcApplication:IdcApplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationType = registerOutput<String>('applicationType');
    this.authorizedTokenIssuer =
        registerOutput<IdcApplicationAuthorizedTokenIssuer?>(
            'authorizedTokenIssuer');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.idcDisplayName = registerOutput<String>('idcDisplayName');
    this.idcInstanceArn = registerOutput<String>('idcInstanceArn');
    this.idcManagedApplicationArn =
        registerOutput<String>('idcManagedApplicationArn');
    this.identityNamespace = registerOutput<String>('identityNamespace');
    this.redshiftIdcApplicationArn =
        registerOutput<String>('redshiftIdcApplicationArn');
    this.redshiftIdcApplicationName =
        registerOutput<String>('redshiftIdcApplicationName');
    this.region = registerOutput<String>('region');
    this.serviceIntegration =
        registerOutput<IdcApplicationServiceIntegration?>('serviceIntegration');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
