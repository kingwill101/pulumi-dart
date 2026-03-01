// ignore_for_file: unused_element, unnecessary_cast

import 'basic_login_information.dart';
import 'infrastructure.dart';
import 'log_analytics_workspace_config.dart';
import 'on_premise_property.dart';
import 'upload_service_principal.dart';
import 'upload_watermark.dart';

/// The data controller properties.
class DataControllerProperties {
  /// Deprecated. Azure Arc Data Services data controller no longer expose any endpoint. All traffic are exposed through Kubernetes native API.
  final BasicLoginInformation? basicLoginInformation;
  /// If a CustomLocation is provided, this contains the ARM id of the connected cluster the custom location belongs to.
  final String? clusterId;
  /// If a CustomLocation is provided, this contains the ARM id of the extension the custom location belongs to.
  final String? extensionId;
  /// The infrastructure the data controller is running on.
  final Infrastructure? infrastructure;
  /// The raw kubernetes information
  final dynamic k8sRaw;
  /// Last uploaded date from Kubernetes cluster. Defaults to current date time
  final String? lastUploadedDate;
  /// Log analytics workspace id and primary key
  final LogAnalyticsWorkspaceConfig? logAnalyticsWorkspaceConfig;
  /// Login credential for logs dashboard on the Kubernetes cluster.
  final BasicLoginInformation? logsDashboardCredential;
  /// Login credential for metrics dashboard on the Kubernetes cluster.
  final BasicLoginInformation? metricsDashboardCredential;
  /// Properties from the Kubernetes data controller
  final OnPremiseProperty? onPremiseProperty;
  /// Deprecated. Service principal is deprecated in favor of Arc Kubernetes service extension managed identity.
  final UploadServicePrincipal? uploadServicePrincipal;
  /// Properties on upload watermark.  Mostly timestamp for each upload data type
  final UploadWatermark? uploadWatermark;

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
  DataControllerProperties({
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
      'basicLoginInformation': ?basicLoginInformation == null ? null : basicLoginInformation!.toMap(),
      'clusterId': ?clusterId,
      'extensionId': ?extensionId,
      'infrastructure': ?infrastructure == null ? null : infrastructure!.value,
      'k8sRaw': ?k8sRaw,
      'lastUploadedDate': ?lastUploadedDate,
      'logAnalyticsWorkspaceConfig': ?logAnalyticsWorkspaceConfig == null ? null : logAnalyticsWorkspaceConfig!.toMap(),
      'logsDashboardCredential': ?logsDashboardCredential == null ? null : logsDashboardCredential!.toMap(),
      'metricsDashboardCredential': ?metricsDashboardCredential == null ? null : metricsDashboardCredential!.toMap(),
      'onPremiseProperty': ?onPremiseProperty == null ? null : onPremiseProperty!.toMap(),
      'uploadServicePrincipal': ?uploadServicePrincipal == null ? null : uploadServicePrincipal!.toMap(),
      'uploadWatermark': ?uploadWatermark == null ? null : uploadWatermark!.toMap(),
    };
  }

  factory DataControllerProperties.fromMap(Map<String, dynamic> map) {
    return DataControllerProperties(
      basicLoginInformation: map['basicLoginInformation'] == null ? null : BasicLoginInformation.fromMap((map['basicLoginInformation'] as Map).cast<String, dynamic>()),
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      extensionId: map['extensionId'] == null ? null : map['extensionId'] as String,
      infrastructure: map['infrastructure'] == null ? null : Infrastructure.fromValue(map['infrastructure'] as String),
      k8sRaw: map['k8sRaw'] == null ? null : map['k8sRaw'],
      lastUploadedDate: map['lastUploadedDate'] == null ? null : map['lastUploadedDate'] as String,
      logAnalyticsWorkspaceConfig: map['logAnalyticsWorkspaceConfig'] == null ? null : LogAnalyticsWorkspaceConfig.fromMap((map['logAnalyticsWorkspaceConfig'] as Map).cast<String, dynamic>()),
      logsDashboardCredential: map['logsDashboardCredential'] == null ? null : BasicLoginInformation.fromMap((map['logsDashboardCredential'] as Map).cast<String, dynamic>()),
      metricsDashboardCredential: map['metricsDashboardCredential'] == null ? null : BasicLoginInformation.fromMap((map['metricsDashboardCredential'] as Map).cast<String, dynamic>()),
      onPremiseProperty: map['onPremiseProperty'] == null ? null : OnPremiseProperty.fromMap((map['onPremiseProperty'] as Map).cast<String, dynamic>()),
      uploadServicePrincipal: map['uploadServicePrincipal'] == null ? null : UploadServicePrincipal.fromMap((map['uploadServicePrincipal'] as Map).cast<String, dynamic>()),
      uploadWatermark: map['uploadWatermark'] == null ? null : UploadWatermark.fromMap((map['uploadWatermark'] as Map).cast<String, dynamic>()),
    );
  }
}

