// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iisweb_application_response.dart';

/// IIS workload instance model custom properties.
class IISWorkloadInstanceModelCustomPropertiesResponse {
  /// Gets or sets the container Id.
  final pulumi.Input<String>? containerName;
  /// Gets or sets the fileshare name.
  final pulumi.Input<String>? fileshareName;
  /// IISWeb application.
  final pulumi.Input<IISWebApplicationResponse>? iisWebApplication;
  /// Gets or sets the instance type.
  /// Expected value is 'IISWorkloadInstanceModelCustomProperties'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the Web application ARM id.
  final pulumi.Input<String>? webAppArmId;
  /// Gets or sets the Web application site name.
  final pulumi.Input<String>? webAppSiteName;

  /// Creates a new [IISWorkloadInstanceModelCustomPropertiesResponse].
  /// [containerName] Gets or sets the container Id.
  /// [fileshareName] Gets or sets the fileshare name.
  /// [iisWebApplication] IISWeb application.
  /// [instanceType] Gets or sets the instance type.
  /// [webAppArmId] Gets or sets the Web application ARM id.
  /// [webAppSiteName] Gets or sets the Web application site name.
  const IISWorkloadInstanceModelCustomPropertiesResponse({
    this.containerName,
    this.fileshareName,
    this.iisWebApplication,
    required this.instanceType,
    this.webAppArmId,
    this.webAppSiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'fileshareName': ?fileshareName,
      'iisWebApplication': ?pulumi.Input.mapOptionalInputValue<IISWebApplicationResponse, Map<String, dynamic>>(iisWebApplication, (value) => value.toMap()),
      'instanceType': instanceType,
      'webAppArmId': ?webAppArmId,
      'webAppSiteName': ?webAppSiteName,
    };
  }

  factory IISWorkloadInstanceModelCustomPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IISWorkloadInstanceModelCustomPropertiesResponse(
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileshareName: (() { final guardedValue = map['fileshareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iisWebApplication: (() { final guardedValue = map['iisWebApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IISWebApplicationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      webAppArmId: (() { final guardedValue = map['webAppArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webAppSiteName: (() { final guardedValue = map['webAppSiteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
