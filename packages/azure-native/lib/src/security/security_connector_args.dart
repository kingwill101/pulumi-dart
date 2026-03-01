// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_environment_data.dart';
import 'cspm_monitor_aws_offering.dart';

/// {@template pulumi_security_security_connector_args_doc}
/// The set of arguments for SecurityConnector.
/// {@endtemplate}
/// {@macro pulumi_security_security_connector_args_doc}
class SecurityConnectorArgs {
  /// The security connector environment data.
  final pulumi.Input<AwsEnvironmentData>? environmentData;
  /// The multi cloud resource's cloud name.
  final pulumi.Input<String>? environmentName;
  /// The multi cloud resource identifier (account id in case of AWS connector, project number in case of GCP connector).
  final pulumi.Input<String>? hierarchyIdentifier;
  /// Kind of the resource
  final pulumi.Input<String>? kind;
  /// Location where the resource is stored
  final pulumi.Input<String>? location;
  /// A collection of offerings for the security connector.
  final pulumi.Input<List<CspmMonitorAwsOffering>>? offerings;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The security connector name.
  final pulumi.Input<String>? securityConnectorName;
  /// A list of key value pairs that describe the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SecurityConnectorArgs].
  /// [environmentData] The security connector environment data.
  /// [environmentName] The multi cloud resource's cloud name.
  /// [hierarchyIdentifier] The multi cloud resource identifier (account id in case of AWS connector, project number in case of GCP connector).
  /// [kind] Kind of the resource
  /// [location] Location where the resource is stored
  /// [offerings] A collection of offerings for the security connector.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [securityConnectorName] The security connector name.
  /// [tags] A list of key value pairs that describe the resource.
  SecurityConnectorArgs({
    AwsEnvironmentData? environmentData,
    String? environmentName,
    String? hierarchyIdentifier,
    String? kind,
    String? location,
    List<CspmMonitorAwsOffering>? offerings,
    required String resourceGroupName,
    String? securityConnectorName,
    Map<String, String>? tags,
  }) :
      environmentData = pulumi.Input.asOptionalInput<AwsEnvironmentData>(environmentData),
      environmentName = pulumi.Input.asOptionalInput<String>(environmentName),
      hierarchyIdentifier = pulumi.Input.asOptionalInput<String>(hierarchyIdentifier),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      offerings = pulumi.Input.asOptionalInput<List<CspmMonitorAwsOffering>>(offerings),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securityConnectorName = pulumi.Input.asOptionalInput<String>(securityConnectorName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentData': ?pulumi.Input.mapOptionalInputValue<AwsEnvironmentData, Map<String, dynamic>>(environmentData, (value) => value.toMap()),
      'environmentName': ?environmentName,
      'hierarchyIdentifier': ?hierarchyIdentifier,
      'kind': ?kind,
      'location': ?location,
      'offerings': ?pulumi.Input.mapOptionalInputValue<List<CspmMonitorAwsOffering>, List<Map<String, dynamic>>>(offerings, (value) => pulumi.Input.encodeList<CspmMonitorAwsOffering, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'securityConnectorName': ?securityConnectorName,
      'tags': ?tags,
    };
  }

  factory SecurityConnectorArgs.fromMap(Map<String, dynamic> map) {
    return SecurityConnectorArgs(
      environmentData: map['environmentData'] == null ? null : AwsEnvironmentData.fromMap((map['environmentData'] as Map).cast<String, dynamic>()),
      environmentName: map['environmentName'] == null ? null : map['environmentName'] as String,
      hierarchyIdentifier: map['hierarchyIdentifier'] == null ? null : map['hierarchyIdentifier'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      offerings: map['offerings'] == null ? null : pulumi.Input.decodeList<CspmMonitorAwsOffering>(map['offerings'], (value) => CspmMonitorAwsOffering.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      securityConnectorName: map['securityConnectorName'] == null ? null : map['securityConnectorName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

