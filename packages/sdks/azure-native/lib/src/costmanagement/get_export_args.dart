// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_export_args_doc}
/// Arguments for getExport.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_export_args_doc}
class GetExportArgs {
  /// May be used to expand the properties within an export. Currently only 'runHistory' is supported and will return information for the last 10 runs of the export.
  final pulumi.Input<String>? expand;
  /// Export Name.
  final pulumi.Input<String> exportName;
  /// The scope associated with export operations. This includes '/subscriptions/{subscriptionId}/' for subscription scope, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope and '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, '/providers/Microsoft.Management/managementGroups/{managementGroupId} for Management Group scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for billingProfile scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}/invoiceSections/{invoiceSectionId}' for invoiceSection scope, and '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/customers/{customerId}' specific for partners.
  final pulumi.Input<String> scope;

  /// Creates a new [GetExportArgs].
  /// [expand] May be used to expand the properties within an export. Currently only 'runHistory' is supported and will return information for the last 10 runs of the export.
  /// [exportName] Export Name.
  /// [scope] The scope associated with export operations. This includes '/subscriptions/{subscriptionId}/' for subscription scope, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope and '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, '/providers/Microsoft.Management/managementGroups/{managementGroupId} for Management Group scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for billingProfile scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}/invoiceSections/{invoiceSectionId}' for invoiceSection scope, and '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/customers/{customerId}' specific for partners.
  GetExportArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> exportName,
    required pulumi.Output<String> scope,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      exportName = pulumi.Input.asInput<String>(exportName),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'exportName': exportName,
      'scope': scope,
    };
  }

  factory GetExportArgs.fromMap(Map<String, dynamic> map) {
    return GetExportArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      exportName: pulumi.Output.create<String>(map['exportName'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

