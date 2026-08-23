// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_login_information.dart';
import 'infrastructure.dart';
import 'log_analytics_workspace_config.dart';
import 'on_premise_property.dart';
import 'upload_service_principal.dart';
import 'upload_watermark.dart';

/// The data controller properties.
class DataControllerProperties {
  /// Deprecated. Azure Arc Data Services data controller no longer expose any endpoint. All traffic are exposed through Kubernetes native API.
  final pulumi.Input<BasicLoginInformation>? basicLoginInformation;
  /// If a CustomLocation is provided, this contains the ARM id of the connected cluster the custom location belongs to.
  final pulumi.Input<String>? clusterId;
  /// If a CustomLocation is provided, this contains the ARM id of the extension the custom location belongs to.
  final pulumi.Input<String>? extensionId;
  /// The infrastructure the data controller is running on.
  final pulumi.Input<Infrastructure>? infrastructure;
  /// The raw kubernetes information
  final pulumi.Input<dynamic>? k8sRaw;
  /// Last uploaded date from Kubernetes cluster. Defaults to current date time
  final pulumi.Input<String>? lastUploadedDate;
  /// Log analytics workspace id and primary key
  final pulumi.Input<LogAnalyticsWorkspaceConfig>? logAnalyticsWorkspaceConfig;
  /// Login credential for logs dashboard on the Kubernetes cluster.
  final pulumi.Input<BasicLoginInformation>? logsDashboardCredential;
  /// Login credential for metrics dashboard on the Kubernetes cluster.
  final pulumi.Input<BasicLoginInformation>? metricsDashboardCredential;
  /// Properties from the Kubernetes data controller
  final pulumi.Input<OnPremiseProperty>? onPremiseProperty;
  /// Deprecated. Service principal is deprecated in favor of Arc Kubernetes service extension managed identity.
  final pulumi.Input<UploadServicePrincipal>? uploadServicePrincipal;
  /// Properties on upload watermark.  Mostly timestamp for each upload data type
  final pulumi.Input<UploadWatermark>? uploadWatermark;

  /// Creates a new [DataControllerProperties].
  /// [basicLoginInformation] Deprecated. Azure Arc Data Services data controller no longer expose any endpoint. All traffic are exposed through Kubernetes native API.
  /// [clusterId] If a CustomLocation is provided, this contains the ARM id of the connected cluster the custom location belongs to.
  /// [extensionId] If a CustomLocation is provided, this contains the ARM id of the extension the custom location belongs to.
  /// [infrastructure] The infrastructure the data controller is running on.
  /// [k8sRaw] The raw kubernetes information
  /// [lastUploadedDate] Last uploaded date from Kubernetes cluster. Defaults to current date time
  /// [logAnalyticsWorkspaceConfig] Log analytics workspace id and primary key
  /// [logsDashboardCredential] Login credential for logs dashboard on the Kubernetes cluster.
  /// [metricsDashboardCredential] Login credential for metrics dashboard on the Kubernetes cluster.
  /// [onPremiseProperty] Properties from the Kubernetes data controller
  /// [uploadServicePrincipal] Deprecated. Service principal is deprecated in favor of Arc Kubernetes service extension managed identity.
  /// [uploadWatermark] Properties on upload watermark.  Mostly timestamp for each upload data type
  const DataControllerProperties({
    this.basicLoginInformation,
    this.clusterId,
    this.extensionId,
    this.infrastructure,
    this.k8sRaw,
    this.lastUploadedDate,
    this.logAnalyticsWorkspaceConfig,
    this.logsDashboardCredential,
    this.metricsDashboardCredential,
    this.onPremiseProperty,
    this.uploadServicePrincipal,
    this.uploadWatermark,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicLoginInformation': ?pulumi.Input.mapOptionalInputValue<BasicLoginInformation, Map<String, dynamic>>(basicLoginInformation, (value) => value.toMap()),
      'clusterId': ?clusterId,
      'extensionId': ?extensionId,
      'infrastructure': ?pulumi.Input.mapOptionalInputValue<Infrastructure, String>(infrastructure, (value) => value.wireValue),
      'k8sRaw': ?k8sRaw,
      'lastUploadedDate': ?lastUploadedDate,
      'logAnalyticsWorkspaceConfig': ?pulumi.Input.mapOptionalInputValue<LogAnalyticsWorkspaceConfig, Map<String, dynamic>>(logAnalyticsWorkspaceConfig, (value) => value.toMap()),
      'logsDashboardCredential': ?pulumi.Input.mapOptionalInputValue<BasicLoginInformation, Map<String, dynamic>>(logsDashboardCredential, (value) => value.toMap()),
      'metricsDashboardCredential': ?pulumi.Input.mapOptionalInputValue<BasicLoginInformation, Map<String, dynamic>>(metricsDashboardCredential, (value) => value.toMap()),
      'onPremiseProperty': ?pulumi.Input.mapOptionalInputValue<OnPremiseProperty, Map<String, dynamic>>(onPremiseProperty, (value) => value.toMap()),
      'uploadServicePrincipal': ?pulumi.Input.mapOptionalInputValue<UploadServicePrincipal, Map<String, dynamic>>(uploadServicePrincipal, (value) => value.toMap()),
      'uploadWatermark': ?pulumi.Input.mapOptionalInputValue<UploadWatermark, Map<String, dynamic>>(uploadWatermark, (value) => value.toMap()),
    };
  }

  factory DataControllerProperties.fromMap(Map<String, dynamic> map) {
    return DataControllerProperties(
      basicLoginInformation: (() { final guardedValue = map['basicLoginInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicLoginInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionId: (() { final guardedValue = map['extensionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      infrastructure: (() { final guardedValue = map['infrastructure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Infrastructure.fromValue(guardedValue as String)); })(),
      k8sRaw: (() { final guardedValue = map['k8sRaw']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      lastUploadedDate: (() { final guardedValue = map['lastUploadedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logAnalyticsWorkspaceConfig: (() { final guardedValue = map['logAnalyticsWorkspaceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogAnalyticsWorkspaceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logsDashboardCredential: (() { final guardedValue = map['logsDashboardCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicLoginInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricsDashboardCredential: (() { final guardedValue = map['metricsDashboardCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicLoginInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onPremiseProperty: (() { final guardedValue = map['onPremiseProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OnPremiseProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uploadServicePrincipal: (() { final guardedValue = map['uploadServicePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UploadServicePrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uploadWatermark: (() { final guardedValue = map['uploadWatermark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UploadWatermark.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
