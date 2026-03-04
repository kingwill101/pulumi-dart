// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_domain_controller_response.dart';

/// Details about the Active Directory domain controllers associated with this AD connector instance
class ActiveDirectoryDomainControllersResponse {
  /// Information about the Primary Domain Controller (PDC) in the AD domain.
  final pulumi.Input<ActiveDirectoryDomainControllerResponse>?
  primaryDomainController;

  /// null
  final pulumi.Input<List<ActiveDirectoryDomainControllerResponse>>?
  secondaryDomainControllers;

  /// Creates a new [ActiveDirectoryDomainControllersResponse].
  /// [primaryDomainController] Information about the Primary Domain Controller (PDC) in the AD domain.
  /// [secondaryDomainControllers] null
  ActiveDirectoryDomainControllersResponse({
    this.primaryDomainController,
    this.secondaryDomainControllers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryDomainController':
          ?pulumi.Input.mapOptionalInputValue<
            ActiveDirectoryDomainControllerResponse,
            Map<String, dynamic>
          >(primaryDomainController, (value) => value.toMap()),
      'secondaryDomainControllers':
          ?pulumi.Input.mapOptionalInputValue<
            List<ActiveDirectoryDomainControllerResponse>,
            List<Map<String, dynamic>>
          >(
            secondaryDomainControllers,
            (value) =>
                pulumi.Input.encodeList<
                  ActiveDirectoryDomainControllerResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ActiveDirectoryDomainControllersResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ActiveDirectoryDomainControllersResponse(
      primaryDomainController: (() {
        final guardedValue = map['primaryDomainController'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActiveDirectoryDomainControllerResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      secondaryDomainControllers: (() {
        final guardedValue = map['secondaryDomainControllers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ActiveDirectoryDomainControllerResponse>(
            guardedValue,
            (value) => ActiveDirectoryDomainControllerResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
