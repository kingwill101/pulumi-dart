// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_login_information_response.dart';
import 'log_analytics_workspace_config_response.dart';
import 'on_premise_property_response.dart';
import 'upload_service_principal_response.dart';
import 'upload_watermark_response.dart';

/// The data controller properties.
class DataControllerPropertiesResponse {
  /// Deprecated. Azure Arc Data Services data controller no longer expose any endpoint. All traffic are exposed through Kubernetes native API.
  final pulumi.Input<BasicLoginInformationResponse>? basicLoginInformation;
  /// If a CustomLocation is provided, this contains the ARM id of the connected cluster the custom location belongs to.
  final pulumi.Input<String>? clusterId;
  /// If a CustomLocation is provided, this contains the ARM id of the extension the custom location belongs to.
  final pulumi.Input<String>? extensionId;
  /// The infrastructure the data controller is running on.
  final pulumi.Input<String>? infrastructure;
  /// The raw kubernetes information
  final pulumi.Input<dynamic>? k8sRaw;
  /// Last uploaded date from Kubernetes cluster. Defaults to current date time
  final pulumi.Input<String>? lastUploadedDate;
  /// Log analytics workspace id and primary key
  final pulumi.Input<LogAnalyticsWorkspaceConfigResponse>? logAnalyticsWorkspaceConfig;
  /// Login credential for logs dashboard on the Kubernetes cluster.
  final pulumi.Input<BasicLoginInformationResponse>? logsDashboardCredential;
  /// Login credential for metrics dashboard on the Kubernetes cluster.
  final pulumi.Input<BasicLoginInformationResponse>? metricsDashboardCredential;
  /// Properties from the Kubernetes data controller
  final pulumi.Input<OnPremisePropertyResponse>? onPremiseProperty;
  /// The provisioning state of the Arc Data Controller resource.
  final pulumi.Input<String> provisioningState;
  /// Deprecated. Service principal is deprecated in favor of Arc Kubernetes service extension managed identity.
  final pulumi.Input<UploadServicePrincipalResponse>? uploadServicePrincipal;
  /// Properties on upload watermark.  Mostly timestamp for each upload data type
  final pulumi.Input<UploadWatermarkResponse>? uploadWatermark;

  /// Creates a new [DataControllerPropertiesResponse].
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
  /// [provisioningState] The provisioning state of the Arc Data Controller resource.
  /// [uploadServicePrincipal] Deprecated. Service principal is deprecated in favor of Arc Kubernetes service extension managed identity.
  /// [uploadWatermark] Properties on upload watermark.  Mostly timestamp for each upload data type
  DataControllerPropertiesResponse({
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
    required this.provisioningState,
    this.uploadServicePrincipal,
    this.uploadWatermark,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicLoginInformation': ?pulumi.Input.mapOptionalInputValue<BasicLoginInformationResponse, Map<String, dynamic>>(basicLoginInformation, (value) => value.toMap()),
      'clusterId': ?clusterId,
      'extensionId': ?extensionId,
      'infrastructure': ?infrastructure,
      'k8sRaw': ?k8sRaw,
      'lastUploadedDate': ?lastUploadedDate,
      'logAnalyticsWorkspaceConfig': ?pulumi.Input.mapOptionalInputValue<LogAnalyticsWorkspaceConfigResponse, Map<String, dynamic>>(logAnalyticsWorkspaceConfig, (value) => value.toMap()),
      'logsDashboardCredential': ?pulumi.Input.mapOptionalInputValue<BasicLoginInformationResponse, Map<String, dynamic>>(logsDashboardCredential, (value) => value.toMap()),
      'metricsDashboardCredential': ?pulumi.Input.mapOptionalInputValue<BasicLoginInformationResponse, Map<String, dynamic>>(metricsDashboardCredential, (value) => value.toMap()),
      'onPremiseProperty': ?pulumi.Input.mapOptionalInputValue<OnPremisePropertyResponse, Map<String, dynamic>>(onPremiseProperty, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'uploadServicePrincipal': ?pulumi.Input.mapOptionalInputValue<UploadServicePrincipalResponse, Map<String, dynamic>>(uploadServicePrincipal, (value) => value.toMap()),
      'uploadWatermark': ?pulumi.Input.mapOptionalInputValue<UploadWatermarkResponse, Map<String, dynamic>>(uploadWatermark, (value) => value.toMap()),
    };
  }

  factory DataControllerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataControllerPropertiesResponse(
      basicLoginInformation: map['basicLoginInformation'] == null ? null : (BasicLoginInformationResponse.fromMap((map['basicLoginInformation']! as Map).cast<String, dynamic>())).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      extensionId: map['extensionId'] == null ? null : (map['extensionId']! as String).input(),
      infrastructure: map['infrastructure'] == null ? null : (map['infrastructure']! as String).input(),
      k8sRaw: map['k8sRaw'] == null ? null : (map['k8sRaw']!).input(),
      lastUploadedDate: map['lastUploadedDate'] == null ? null : (map['lastUploadedDate']! as String).input(),
      logAnalyticsWorkspaceConfig: map['logAnalyticsWorkspaceConfig'] == null ? null : (LogAnalyticsWorkspaceConfigResponse.fromMap((map['logAnalyticsWorkspaceConfig']! as Map).cast<String, dynamic>())).input(),
      logsDashboardCredential: map['logsDashboardCredential'] == null ? null : (BasicLoginInformationResponse.fromMap((map['logsDashboardCredential']! as Map).cast<String, dynamic>())).input(),
      metricsDashboardCredential: map['metricsDashboardCredential'] == null ? null : (BasicLoginInformationResponse.fromMap((map['metricsDashboardCredential']! as Map).cast<String, dynamic>())).input(),
      onPremiseProperty: map['onPremiseProperty'] == null ? null : (OnPremisePropertyResponse.fromMap((map['onPremiseProperty']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      uploadServicePrincipal: map['uploadServicePrincipal'] == null ? null : (UploadServicePrincipalResponse.fromMap((map['uploadServicePrincipal']! as Map).cast<String, dynamic>())).input(),
      uploadWatermark: map['uploadWatermark'] == null ? null : (UploadWatermarkResponse.fromMap((map['uploadWatermark']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

