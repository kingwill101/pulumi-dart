// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_definition.dart';
import 'export_delivery_info.dart';
import 'export_schedule.dart';
import 'system_assigned_service_identity.dart';

/// {@template pulumi_costmanagement_export_args_doc}
/// The set of arguments for Export.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_export_args_doc}
class ExportArgs {
  /// Has the definition for the export.
  final pulumi.Input<ExportDefinition> definition;
  /// Has delivery information for the export.
  final pulumi.Input<ExportDeliveryInfo> deliveryInfo;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  final pulumi.Input<String>? eTag;
  /// Export Name.
  final pulumi.Input<String>? exportName;
  /// The format of the export being delivered. Currently only 'Csv' is supported.
  final pulumi.Input<String>? format;
  /// The managed identity associated with Export
  final pulumi.Input<SystemAssignedServiceIdentity>? identity;
  /// The location of the Export's managed identity. Only required when utilizing managed identity.
  final pulumi.Input<String>? location;
  /// If set to true, exported data will be partitioned by size and placed in a blob directory together with a manifest file. Note: this option is currently available only for Microsoft Customer Agreement commerce scopes.
  final pulumi.Input<bool>? partitionData;
  /// Has schedule information for the export.
  final pulumi.Input<ExportSchedule>? schedule;
  /// The scope associated with export operations. This includes '/subscriptions/{subscriptionId}/' for subscription scope, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope and '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, '/providers/Microsoft.Management/managementGroups/{managementGroupId} for Management Group scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for billingProfile scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}/invoiceSections/{invoiceSectionId}' for invoiceSection scope, and '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/customers/{customerId}' specific for partners.
  final pulumi.Input<String> scope;

  /// Creates a new [ExportArgs].
  /// [definition] Has the definition for the export.
  /// [deliveryInfo] Has delivery information for the export.
  /// [eTag] eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  /// [exportName] Export Name.
  /// [format] The format of the export being delivered. Currently only 'Csv' is supported.
  /// [identity] The managed identity associated with Export
  /// [location] The location of the Export's managed identity. Only required when utilizing managed identity.
  /// [partitionData] If set to true, exported data will be partitioned by size and placed in a blob directory together with a manifest file. Note: this option is currently available only for Microsoft Customer Agreement commerce scopes.
  /// [schedule] Has schedule information for the export.
  /// [scope] The scope associated with export operations. This includes '/subscriptions/{subscriptionId}/' for subscription scope, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope and '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, '/providers/Microsoft.Management/managementGroups/{managementGroupId} for Management Group scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for billingProfile scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}/invoiceSections/{invoiceSectionId}' for invoiceSection scope, and '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/customers/{customerId}' specific for partners.
  const ExportArgs({
    required this.definition,
    required this.deliveryInfo,
    this.eTag,
    this.exportName,
    this.format,
    this.identity,
    this.location,
    this.partitionData,
    this.schedule,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': pulumi.Input.mapInputValue<ExportDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'deliveryInfo': pulumi.Input.mapInputValue<ExportDeliveryInfo, Map<String, dynamic>>(deliveryInfo, (value) => value.toMap()),
      'eTag': ?eTag,
      'exportName': ?exportName,
      'format': ?format,
      'identity': ?pulumi.Input.mapOptionalInputValue<SystemAssignedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'partitionData': ?partitionData,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ExportSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'scope': scope,
    };
  }

  factory ExportArgs.fromMap(Map<String, dynamic> map) {
    return ExportArgs(
      definition: pulumi.Input.fromValue(ExportDefinition.fromMap((map['definition']! as Map).cast<String, dynamic>())),
      deliveryInfo: pulumi.Input.fromValue(ExportDeliveryInfo.fromMap((map['deliveryInfo']! as Map).cast<String, dynamic>())),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportName: (() { final guardedValue = map['exportName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemAssignedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionData: (() { final guardedValue = map['partitionData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExportSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
