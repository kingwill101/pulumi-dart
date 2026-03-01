// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_domain_controller_response.dart';

/// Details about the Active Directory domain controllers associated with this AD connector instance
class ActiveDirectoryDomainControllersResponse {
  /// Information about the Primary Domain Controller (PDC) in the AD domain.
  final ActiveDirectoryDomainControllerResponse? primaryDomainController;
  /// null
  final List<ActiveDirectoryDomainControllerResponse>? secondaryDomainControllers;

  /// Creates a new [ActiveDirectoryDomainControllersResponse].
  /// [primaryDomainController] Information about the Primary Domain Controller (PDC) in the AD domain.
  /// [secondaryDomainControllers] null
  ActiveDirectoryDomainControllersResponse({
    this.primaryDomainController,
    this.secondaryDomainControllers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryDomainController': ?primaryDomainController == null ? null : primaryDomainController!.toMap(),
      'secondaryDomainControllers': ?secondaryDomainControllers == null ? null : pulumi.Input.encodeList<ActiveDirectoryDomainControllerResponse, Map<String, dynamic>>(secondaryDomainControllers!, (value) => value.toMap()),
    };
  }

  factory ActiveDirectoryDomainControllersResponse.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryDomainControllersResponse(
      primaryDomainController: map['primaryDomainController'] == null ? null : ActiveDirectoryDomainControllerResponse.fromMap((map['primaryDomainController'] as Map).cast<String, dynamic>()),
      secondaryDomainControllers: map['secondaryDomainControllers'] == null ? null : pulumi.Input.decodeList<ActiveDirectoryDomainControllerResponse>(map['secondaryDomainControllers'], (value) => ActiveDirectoryDomainControllerResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

