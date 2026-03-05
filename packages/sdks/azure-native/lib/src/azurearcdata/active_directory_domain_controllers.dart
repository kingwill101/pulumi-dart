// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_domain_controller.dart';

/// Details about the Active Directory domain controllers associated with this AD connector instance
class ActiveDirectoryDomainControllers {
  /// Information about the Primary Domain Controller (PDC) in the AD domain.
  final pulumi.Input<ActiveDirectoryDomainController>? primaryDomainController;
  /// null
  final pulumi.Input<List<ActiveDirectoryDomainController>>? secondaryDomainControllers;

  /// Creates a new [ActiveDirectoryDomainControllers].
  /// [primaryDomainController] Information about the Primary Domain Controller (PDC) in the AD domain.
  /// [secondaryDomainControllers] null
  ActiveDirectoryDomainControllers({
    this.primaryDomainController,
    this.secondaryDomainControllers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryDomainController': ?pulumi.Input.mapOptionalInputValue<ActiveDirectoryDomainController, Map<String, dynamic>>(primaryDomainController, (value) => value.toMap()),
      'secondaryDomainControllers': ?pulumi.Input.mapOptionalInputValue<List<ActiveDirectoryDomainController>, List<Map<String, dynamic>>>(secondaryDomainControllers, (value) => pulumi.Input.encodeList<ActiveDirectoryDomainController, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ActiveDirectoryDomainControllers.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryDomainControllers(
      primaryDomainController: (() { final guardedValue = map['primaryDomainController']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActiveDirectoryDomainController.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryDomainControllers: (() { final guardedValue = map['secondaryDomainControllers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActiveDirectoryDomainController>(guardedValue, (value) => ActiveDirectoryDomainController.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

