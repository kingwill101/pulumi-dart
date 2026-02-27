import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_servicequotas_args.dart';

/// Resource for managing an AWS Service Quotas Template.
///
/// > Only the management account of an organization can alter Service Quota templates, and this must be done from the `us-east-1` region.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Quotas Template using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:servicequotas/template:Template example us-east-1,L-2ACBD22F,lambda
/// ```
class TemplateServicequotas extends pulumi.CustomResource {
  /// AWS Region to which the template applies.
  late final pulumi.Output<String> awsRegion;

  /// Indicates whether the quota is global.
  late final pulumi.Output<bool> globalQuota;

  /// Quota identifier. To find the quota code for a specific quota, use the aws.servicequotas.ServiceQuota data source.
  late final pulumi.Output<String> quotaCode;

  /// Quota name.
  late final pulumi.Output<String> quotaName;

  /// AWS Region to which the template applies. Use `aws.getRegion` instead.
  late final pulumi.Output<String> region;

  /// Service identifier. To find the service code value for an AWS service, use the aws.servicequotas.getService data source.
  late final pulumi.Output<String> serviceCode;

  /// Service name.
  late final pulumi.Output<String> serviceName;

  /// Unit of measurement.
  late final pulumi.Output<String> unit;

  /// The new, increased value for the quota.
  late final pulumi.Output<double> value;

  TemplateServicequotas(
    String name, {
    TemplateServicequotasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicequotas/template:Template',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsRegion = registerOutput<String>('awsRegion');
    this.globalQuota = registerOutput<bool>('globalQuota');
    this.quotaCode = registerOutput<String>('quotaCode');
    this.quotaName = registerOutput<String>('quotaName');
    this.region = registerOutput<String>('region');
    this.serviceCode = registerOutput<String>('serviceCode');
    this.serviceName = registerOutput<String>('serviceName');
    this.unit = registerOutput<String>('unit');
    this.value = registerOutput<double>('value');
  }
}
