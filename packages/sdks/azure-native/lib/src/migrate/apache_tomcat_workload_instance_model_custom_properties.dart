// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apache_tomcat_web_application.dart';

/// ApacheTomcat workload instance model custom properties.
class ApacheTomcatWorkloadInstanceModelCustomProperties {
  /// ApacheTomcat web application.
  final pulumi.Input<ApacheTomcatWebApplication?>? apacheTomcatWebApplication;
  /// Gets or sets the instance type.
  /// Expected value is 'ApacheTomcatWorkloadInstanceModelCustomProperties'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the Web application ARM id.
  final pulumi.Input<String?>? webAppArmId;
  /// Gets or sets the Web application site name.
  final pulumi.Input<String?>? webAppSiteName;

  /// Creates a new [ApacheTomcatWorkloadInstanceModelCustomProperties].
  /// [apacheTomcatWebApplication] ApacheTomcat web application.
  /// [instanceType] Gets or sets the instance type.
  /// [webAppArmId] Gets or sets the Web application ARM id.
  /// [webAppSiteName] Gets or sets the Web application site name.
  const ApacheTomcatWorkloadInstanceModelCustomProperties({
    this.apacheTomcatWebApplication,
    required this.instanceType,
    this.webAppArmId,
    this.webAppSiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apacheTomcatWebApplication': ?pulumi.Input.mapOptionalInputValue<ApacheTomcatWebApplication, Map<String, dynamic>>(apacheTomcatWebApplication, (value) => value.toMap()),
      'instanceType': instanceType,
      'webAppArmId': ?webAppArmId,
      'webAppSiteName': ?webAppSiteName,
    };
  }

  factory ApacheTomcatWorkloadInstanceModelCustomProperties.fromMap(Map<String, dynamic> map) {
    return ApacheTomcatWorkloadInstanceModelCustomProperties(
      apacheTomcatWebApplication: (() { final guardedValue = map['apacheTomcatWebApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApacheTomcatWebApplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      webAppArmId: (() { final guardedValue = map['webAppArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webAppSiteName: (() { final guardedValue = map['webAppSiteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
