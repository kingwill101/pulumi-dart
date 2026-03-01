// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_regional_endpoint_regional_endpoint_args_doc}
/// The set of arguments for RegionalEndpoint.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_regional_endpoint_regional_endpoint_args_doc}
class RegionalEndpointArgs {
  /// The access type of this regional endpoint. This field is reflected in the PSC Forwarding Rule configuration to enable global access.
  /// Possible values are: `GLOBAL`, `REGIONAL`.
  final pulumi.Input<String> accessType;

  /// The IP Address of the Regional Endpoint. When no address is provided, an IP from the subnetwork is allocated. Use one of the following formats: * IPv4 address as in `10.0.0.1` * Address resource URI as in `projects/{project}/regions/{region}/addresses/{address_name}`
  /// > **Note:** This field accepts both a reference to a Compute Address resource, which is the resource name of which format is given in the description, and IP literal value. If the user chooses to input a reserved address value; they need to make sure that the reserved address is in IPv4 version, its purpose is GCE_ENDPOINT, its type is INTERNAL and its status is RESERVED. If the user chooses to input an IP literal, they need to make sure that it's a valid IPv4 address (x.x.x.x) within the subnetwork.
  final pulumi.Input<String>? address;

  /// A description of this resource.
  final pulumi.Input<String>? description;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the RegionalEndpoint.
  final pulumi.Input<String> location;

  /// The name of the RegionalEndpoint.
  final pulumi.Input<String>? name;

  /// The name of the VPC network for this private regional endpoint. Format: `projects/{project}/global/networks/{network}`
  final pulumi.Input<String>? network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the subnetwork from which the IP address will be allocated. Format: `projects/{project}/regions/{region}/subnetworks/{subnetwork}`
  final pulumi.Input<String>? subnetwork;

  /// The service endpoint this private regional endpoint connects to. Format: `{apiname}.{region}.rep.googleapis.com` Example: \"cloudkms.us-central1.rep.googleapis.com\".
  final pulumi.Input<String> targetGoogleApi;

  /// Creates a new [RegionalEndpointArgs].
  /// [accessType] The access type of this regional endpoint. This field is reflected in the PSC Forwarding Rule configuration to enable global access.
  /// [address] The IP Address of the Regional Endpoint. When no address is provided, an IP from the subnetwork is allocated. Use one of the following formats: * IPv4 address as in `10.0.0.1` * Address resource URI as in `projects/{project}/regions/{region}/addresses/{address_name}`
  /// [description] A description of this resource.
  /// [labels] User-defined labels.
  /// [location] The location of the RegionalEndpoint.
  /// [name] The name of the RegionalEndpoint.
  /// [network] The name of the VPC network for this private regional endpoint. Format: `projects/{project}/global/networks/{network}`
  /// [project] The ID of the project in which the resource belongs.
  /// [subnetwork] The name of the subnetwork from which the IP address will be allocated. Format: `projects/{project}/regions/{region}/subnetworks/{subnetwork}`
  /// [targetGoogleApi] The service endpoint this private regional endpoint connects to. Format: `{apiname}.{region}.rep.googleapis.com` Example: \"cloudkms.us-central1.rep.googleapis.com\".
  RegionalEndpointArgs({
    required String accessType,
    String? address,
    String? description,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? network,
    String? project,
    String? subnetwork,
    required String targetGoogleApi,
  }) : accessType = pulumi.Input.asInput<String>(accessType),
       address = pulumi.Input.asOptionalInput<String>(address),
       description = pulumi.Input.asOptionalInput<String>(description),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       network = pulumi.Input.asOptionalInput<String>(network),
       project = pulumi.Input.asOptionalInput<String>(project),
       subnetwork = pulumi.Input.asOptionalInput<String>(subnetwork),
       targetGoogleApi = pulumi.Input.asInput<String>(targetGoogleApi);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': accessType,
      'address': ?address,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'subnetwork': ?subnetwork,
      'targetGoogleApi': targetGoogleApi,
    };
  }

  factory RegionalEndpointArgs.fromMap(Map<String, dynamic> map) {
    return RegionalEndpointArgs(
      accessType: map['accessType'] as String,
      address: map['address'] == null ? null : map['address'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      subnetwork: map['subnetwork'] == null
          ? null
          : map['subnetwork'] as String,
      targetGoogleApi: map['targetGoogleApi'] as String,
    );
  }
}
