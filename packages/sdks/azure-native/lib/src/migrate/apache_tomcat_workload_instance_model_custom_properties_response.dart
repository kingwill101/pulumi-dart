// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apache_tomcat_web_application_response.dart';

/// ApacheTomcat workload instance model custom properties.
class ApacheTomcatWorkloadInstanceModelCustomPropertiesResponse {
  /// ApacheTomcat web application.
  final pulumi.Input<ApacheTomcatWebApplicationResponse>?
  apacheTomcatWebApplication;

  /// Gets or sets the instance type.
  /// Expected value is 'ApacheTomcatWorkloadInstanceModelCustomProperties'.
  final pulumi.Input<String> instanceType;

  /// Gets or sets the Web application ARM id.
  final pulumi.Input<String>? webAppArmId;

  /// Gets or sets the Web application site name.
  final pulumi.Input<String>? webAppSiteName;

  /// Creates a new [ApacheTomcatWorkloadInstanceModelCustomPropertiesResponse].
  /// [apacheTomcatWebApplication] ApacheTomcat web application.
  /// [instanceType] Gets or sets the instance type.
  /// [webAppArmId] Gets or sets the Web application ARM id.
  /// [webAppSiteName] Gets or sets the Web application site name.
  ApacheTomcatWorkloadInstanceModelCustomPropertiesResponse({
    this.apacheTomcatWebApplication,
    required this.instanceType,
    this.webAppArmId,
    this.webAppSiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apacheTomcatWebApplication':
          ?pulumi.Input.mapOptionalInputValue<
            ApacheTomcatWebApplicationResponse,
            Map<String, dynamic>
          >(apacheTomcatWebApplication, (value) => value.toMap()),
      'instanceType': instanceType,
      'webAppArmId': ?webAppArmId,
      'webAppSiteName': ?webAppSiteName,
    };
  }

  factory ApacheTomcatWorkloadInstanceModelCustomPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApacheTomcatWorkloadInstanceModelCustomPropertiesResponse(
      apacheTomcatWebApplication: (() {
        final guardedValue = map['apacheTomcatWebApplication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApacheTomcatWebApplicationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      webAppArmId: (() {
        final guardedValue = map['webAppArmId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webAppSiteName: (() {
        final guardedValue = map['webAppSiteName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
