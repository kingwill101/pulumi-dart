// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_type.dart';
import 'custom_host_name_dns_record_type.dart';
import 'host_name_type.dart';
import 'ssl_state.dart';

/// {@template pulumi_web_web_app_host_name_binding_args_doc}
/// The set of arguments for WebAppHostNameBinding.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_host_name_binding_args_doc}
class WebAppHostNameBindingArgs {
  /// Azure resource name.
  final pulumi.Input<String>? azureResourceName;
  /// Azure resource type.
  final pulumi.Input<AzureResourceType>? azureResourceType;
  /// Custom DNS record type.
  final pulumi.Input<CustomHostNameDnsRecordType>? customHostNameDnsRecordType;
  /// Fully qualified ARM domain resource URI.
  final pulumi.Input<String>? domainId;
  /// Hostname in the hostname binding.
  final pulumi.Input<String>? hostName;
  /// Hostname type.
  final pulumi.Input<HostNameType>? hostNameType;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// App Service app name.
  final pulumi.Input<String>? siteName;
  /// SSL type
  final pulumi.Input<SslState>? sslState;
  /// SSL certificate thumbprint
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [WebAppHostNameBindingArgs].
  /// [azureResourceName] Azure resource name.
  /// [azureResourceType] Azure resource type.
  /// [customHostNameDnsRecordType] Custom DNS record type.
  /// [domainId] Fully qualified ARM domain resource URI.
  /// [hostName] Hostname in the hostname binding.
  /// [hostNameType] Hostname type.
  /// [kind] Kind of resource.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [siteName] App Service app name.
  /// [sslState] SSL type
  /// [thumbprint] SSL certificate thumbprint
  WebAppHostNameBindingArgs({
    String? azureResourceName,
    AzureResourceType? azureResourceType,
    CustomHostNameDnsRecordType? customHostNameDnsRecordType,
    String? domainId,
    String? hostName,
    HostNameType? hostNameType,
    String? kind,
    required String name,
    required String resourceGroupName,
    String? siteName,
    SslState? sslState,
    String? thumbprint,
  }) :
      azureResourceName = pulumi.Input.asOptionalInput<String>(azureResourceName),
      azureResourceType = pulumi.Input.asOptionalInput<AzureResourceType>(azureResourceType),
      customHostNameDnsRecordType = pulumi.Input.asOptionalInput<CustomHostNameDnsRecordType>(customHostNameDnsRecordType),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      hostNameType = pulumi.Input.asOptionalInput<HostNameType>(hostNameType),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteName = pulumi.Input.asOptionalInput<String>(siteName),
      sslState = pulumi.Input.asOptionalInput<SslState>(sslState),
      thumbprint = pulumi.Input.asOptionalInput<String>(thumbprint);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceName': ?azureResourceName,
      'azureResourceType': ?pulumi.Input.mapOptionalInputValue<AzureResourceType, String>(azureResourceType, (value) => value.value),
      'customHostNameDnsRecordType': ?pulumi.Input.mapOptionalInputValue<CustomHostNameDnsRecordType, String>(customHostNameDnsRecordType, (value) => value.value),
      'domainId': ?domainId,
      'hostName': ?hostName,
      'hostNameType': ?pulumi.Input.mapOptionalInputValue<HostNameType, String>(hostNameType, (value) => value.value),
      'kind': ?kind,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'siteName': ?siteName,
      'sslState': ?pulumi.Input.mapOptionalInputValue<SslState, String>(sslState, (value) => value.value),
      'thumbprint': ?thumbprint,
    };
  }

  factory WebAppHostNameBindingArgs.fromMap(Map<String, dynamic> map) {
    return WebAppHostNameBindingArgs(
      azureResourceName: map['azureResourceName'] == null ? null : map['azureResourceName'] as String,
      azureResourceType: map['azureResourceType'] == null ? null : AzureResourceType.fromValue(map['azureResourceType'] as String),
      customHostNameDnsRecordType: map['customHostNameDnsRecordType'] == null ? null : CustomHostNameDnsRecordType.fromValue(map['customHostNameDnsRecordType'] as String),
      domainId: map['domainId'] == null ? null : map['domainId'] as String,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      hostNameType: map['hostNameType'] == null ? null : HostNameType.fromValue(map['hostNameType'] as String),
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      siteName: map['siteName'] == null ? null : map['siteName'] as String,
      sslState: map['sslState'] == null ? null : SslState.fromValue(map['sslState'] as String),
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

