// ignore_for_file: unused_element, unnecessary_cast

import 'azure_hybrid_benefit_properties.dart';
import 'database_instance_properties.dart';
import 'domain_controller_properties.dart';
import 'domain_user_credentials.dart';
import 'gmsa_details.dart';

/// The properties of a SCOM instance resource
class MonitoringInstanceProperties {
  /// The properties to enable Azure Hybrid benefit for various SCOM infrastructure license.
  final AzureHybridBenefitProperties? azureHybridBenefit;
  /// The database instance where the SCOM Operational and Warehouse databases will be stored.
  final DatabaseInstanceProperties? databaseInstance;
  /// Domain controller details
  final DomainControllerProperties? domainController;
  /// Domain user which will be used to join VMs to domain and login to VMs.
  final DomainUserCredentials? domainUserCredentials;
  /// Gmsa Details for load balancer and vmss
  final GmsaDetails? gmsaDetails;
  /// Virtual Network subnet id on which Aquila instance will be provisioned
  final String? vNetSubnetId;

  /// Creates a new [MonitoringInstanceProperties].
  /// [azureHybridBenefit] The properties to enable Azure Hybrid benefit for various SCOM infrastructure license.
  /// [databaseInstance] The database instance where the SCOM Operational and Warehouse databases will be stored.
  /// [domainController] Domain controller details
  /// [domainUserCredentials] Domain user which will be used to join VMs to domain and login to VMs.
  /// [gmsaDetails] Gmsa Details for load balancer and vmss
  /// [vNetSubnetId] Virtual Network subnet id on which Aquila instance will be provisioned
  MonitoringInstanceProperties({
    this.azureHybridBenefit,
    this.databaseInstance,
    this.domainController,
    this.domainUserCredentials,
    this.gmsaDetails,
    this.vNetSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureHybridBenefit': ?azureHybridBenefit == null ? null : azureHybridBenefit!.toMap(),
      'databaseInstance': ?databaseInstance == null ? null : databaseInstance!.toMap(),
      'domainController': ?domainController == null ? null : domainController!.toMap(),
      'domainUserCredentials': ?domainUserCredentials == null ? null : domainUserCredentials!.toMap(),
      'gmsaDetails': ?gmsaDetails == null ? null : gmsaDetails!.toMap(),
      'vNetSubnetId': ?vNetSubnetId,
    };
  }

  factory MonitoringInstanceProperties.fromMap(Map<String, dynamic> map) {
    return MonitoringInstanceProperties(
      azureHybridBenefit: map['azureHybridBenefit'] == null ? null : AzureHybridBenefitProperties.fromMap((map['azureHybridBenefit'] as Map).cast<String, dynamic>()),
      databaseInstance: map['databaseInstance'] == null ? null : DatabaseInstanceProperties.fromMap((map['databaseInstance'] as Map).cast<String, dynamic>()),
      domainController: map['domainController'] == null ? null : DomainControllerProperties.fromMap((map['domainController'] as Map).cast<String, dynamic>()),
      domainUserCredentials: map['domainUserCredentials'] == null ? null : DomainUserCredentials.fromMap((map['domainUserCredentials'] as Map).cast<String, dynamic>()),
      gmsaDetails: map['gmsaDetails'] == null ? null : GmsaDetails.fromMap((map['gmsaDetails'] as Map).cast<String, dynamic>()),
      vNetSubnetId: map['vNetSubnetId'] == null ? null : map['vNetSubnetId'] as String,
    );
  }
}

