// ignore_for_file: unused_element, unnecessary_cast

import 'deployer_vm_packages_response.dart';

/// Defines the OS and SAP Configurations for Deployment
class OsSapConfigurationResponse {
  /// The url and storage account ID where deployer VM packages are uploaded
  final DeployerVmPackagesResponse? deployerVmPackages;
  /// The FQDN to set for the SAP system
  final String? sapFqdn;

  /// Creates a new [OsSapConfigurationResponse].
  /// [deployerVmPackages] The url and storage account ID where deployer VM packages are uploaded
  /// [sapFqdn] The FQDN to set for the SAP system
  OsSapConfigurationResponse({
    this.deployerVmPackages,
    this.sapFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployerVmPackages': ?deployerVmPackages == null ? null : deployerVmPackages!.toMap(),
      'sapFqdn': ?sapFqdn,
    };
  }

  factory OsSapConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return OsSapConfigurationResponse(
      deployerVmPackages: map['deployerVmPackages'] == null ? null : DeployerVmPackagesResponse.fromMap((map['deployerVmPackages'] as Map).cast<String, dynamic>()),
      sapFqdn: map['sapFqdn'] == null ? null : map['sapFqdn'] as String,
    );
  }
}

