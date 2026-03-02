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
  IISWorkloadInstanceModelCustomPropertiesResponse({
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
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      fileshareName: map['fileshareName'] == null ? null : (map['fileshareName'] as String).input(),
      iisWebApplication: map['iisWebApplication'] == null ? null : (IISWebApplicationResponse.fromMap((map['iisWebApplication'] as Map).cast<String, dynamic>())).input(),
      instanceType: (map['instanceType'] as String).input(),
      webAppArmId: map['webAppArmId'] == null ? null : (map['webAppArmId'] as String).input(),
      webAppSiteName: map['webAppSiteName'] == null ? null : (map['webAppSiteName'] as String).input(),
    );
  }
}

