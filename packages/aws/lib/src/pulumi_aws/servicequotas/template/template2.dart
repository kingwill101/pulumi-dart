import 'package:pulumi/pulumi.dart';
import 'template_args2.dart';

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
class Template2 extends CustomResource {
  /// AWS Region to which the template applies.
  late final Output<String> awsRegion;

  /// Indicates whether the quota is global.
  late final Output<bool> globalQuota;

  /// Quota identifier. To find the quota code for a specific quota, use the aws.servicequotas.ServiceQuota data source.
  late final Output<String> quotaCode;

  /// Quota name.
  late final Output<String> quotaName;

  /// AWS Region to which the template applies. Use `aws.getRegion` instead.
  late final Output<String> region;

  /// Service identifier. To find the service code value for an AWS service, use the aws.servicequotas.getService data source.
  late final Output<String> serviceCode;

  /// Service name.
  late final Output<String> serviceName;

  /// Unit of measurement.
  late final Output<String> unit;

  /// The new, increased value for the quota.
  late final Output<double> value;

  Template2(
    String name, {
    TemplateArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicequotas/template:Template',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
