// ignore_for_file: unused_element, unnecessary_cast

import 'iisweb_application.dart';

/// IIS workload instance model custom properties.
class IISWorkloadInstanceModelCustomProperties {
  /// Gets or sets the container Id.
  final String? containerName;
  /// Gets or sets the fileshare name.
  final String? fileshareName;
  /// IISWeb application.
  final IISWebApplication? iisWebApplication;
  /// Gets or sets the instance type.
  /// Expected value is 'IISWorkloadInstanceModelCustomProperties'.
  final String instanceType;
  /// Gets or sets the Web application ARM id.
  final String? webAppArmId;
  /// Gets or sets the Web application site name.
  final String? webAppSiteName;

  /// Creates a new [IISWorkloadInstanceModelCustomProperties].
  /// [containerName] Gets or sets the container Id.
  /// [fileshareName] Gets or sets the fileshare name.
  /// [iisWebApplication] IISWeb application.
  /// [instanceType] Gets or sets the instance type.
  /// [webAppArmId] Gets or sets the Web application ARM id.
  /// [webAppSiteName] Gets or sets the Web application site name.
  IISWorkloadInstanceModelCustomProperties({
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
      'iisWebApplication': ?iisWebApplication == null ? null : iisWebApplication!.toMap(),
      'instanceType': instanceType,
      'webAppArmId': ?webAppArmId,
      'webAppSiteName': ?webAppSiteName,
    };
  }

  factory IISWorkloadInstanceModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return IISWorkloadInstanceModelCustomProperties(
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      fileshareName: map['fileshareName'] == null ? null : map['fileshareName'] as String,
      iisWebApplication: map['iisWebApplication'] == null ? null : IISWebApplication.fromMap((map['iisWebApplication'] as Map).cast<String, dynamic>()),
      instanceType: map['instanceType'] as String,
      webAppArmId: map['webAppArmId'] == null ? null : map['webAppArmId'] as String,
      webAppSiteName: map['webAppSiteName'] == null ? null : map['webAppSiteName'] as String,
    );
  }
}

