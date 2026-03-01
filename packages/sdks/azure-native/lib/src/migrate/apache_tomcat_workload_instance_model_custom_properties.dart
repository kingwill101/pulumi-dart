// ignore_for_file: unused_element, unnecessary_cast

import 'apache_tomcat_web_application.dart';

/// ApacheTomcat workload instance model custom properties.
class ApacheTomcatWorkloadInstanceModelCustomProperties {
  /// ApacheTomcat web application.
  final ApacheTomcatWebApplication? apacheTomcatWebApplication;
  /// Gets or sets the instance type.
  /// Expected value is 'ApacheTomcatWorkloadInstanceModelCustomProperties'.
  final String instanceType;
  /// Gets or sets the Web application ARM id.
  final String? webAppArmId;
  /// Gets or sets the Web application site name.
  final String? webAppSiteName;

  /// Creates a new [ApacheTomcatWorkloadInstanceModelCustomProperties].
  /// [apacheTomcatWebApplication] ApacheTomcat web application.
  /// [instanceType] Gets or sets the instance type.
  /// [webAppArmId] Gets or sets the Web application ARM id.
  /// [webAppSiteName] Gets or sets the Web application site name.
  ApacheTomcatWorkloadInstanceModelCustomProperties({
    this.apacheTomcatWebApplication,
    required this.instanceType,
    this.webAppArmId,
    this.webAppSiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apacheTomcatWebApplication': ?apacheTomcatWebApplication == null ? null : apacheTomcatWebApplication!.toMap(),
      'instanceType': instanceType,
      'webAppArmId': ?webAppArmId,
      'webAppSiteName': ?webAppSiteName,
    };
  }

  factory ApacheTomcatWorkloadInstanceModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return ApacheTomcatWorkloadInstanceModelCustomProperties(
      apacheTomcatWebApplication: map['apacheTomcatWebApplication'] == null ? null : ApacheTomcatWebApplication.fromMap((map['apacheTomcatWebApplication'] as Map).cast<String, dynamic>()),
      instanceType: map['instanceType'] as String,
      webAppArmId: map['webAppArmId'] == null ? null : map['webAppArmId'] as String,
      webAppSiteName: map['webAppSiteName'] == null ? null : map['webAppSiteName'] as String,
    );
  }
}

