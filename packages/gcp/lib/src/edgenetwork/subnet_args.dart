// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edgenetwork_subnet_subnet_args_doc}
/// The set of arguments for Subnet.
/// {@endtemplate}
/// {@macro pulumi_edgenetwork_subnet_subnet_args_doc}
class SubnetArgs {
  /// A free-text description of the resource. Max length 1024 characters.
  final pulumi.Input<String>? description;
  /// The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format.
  final pulumi.Input<List<String>>? ipv4Cidrs;
  /// The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format.
  final pulumi.Input<List<String>>? ipv6Cidrs;
  /// Labels associated with this resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  final pulumi.Input<String> location;
  /// The ID of the network to which this router belongs.
  /// Must be of the form: `projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}`
  final pulumi.Input<String> network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A unique ID that identifies this subnet.
  final pulumi.Input<String> subnetId;
  /// VLAN ID for this subnetwork. If not specified, one is assigned automatically.
  final pulumi.Input<int>? vlanId;
  /// The name of the target Distributed Cloud Edge zone.
  final pulumi.Input<String> zone;

  /// Creates a new [SubnetArgs].
  /// [description] A free-text description of the resource. Max length 1024 characters.
  /// [ipv4Cidrs] The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format.
  /// [ipv6Cidrs] The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format.
  /// [labels] Labels associated with this resource.
  /// [location] The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  /// [network] The ID of the network to which this router belongs.
  /// [project] The ID of the project in which the resource belongs.
  /// [subnetId] A unique ID that identifies this subnet.
  /// [vlanId] VLAN ID for this subnetwork. If not specified, one is assigned automatically.
  /// [zone] The name of the target Distributed Cloud Edge zone.
  SubnetArgs({
    String? description,
    List<String>? ipv4Cidrs,
    List<String>? ipv6Cidrs,
    Map<String, String>? labels,
    required String location,
    required String network,
    String? project,
    required String subnetId,
    int? vlanId,
    required String zone,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      ipv4Cidrs = pulumi.Input.asOptionalInput<List<String>>(ipv4Cidrs),
      ipv6Cidrs = pulumi.Input.asOptionalInput<List<String>>(ipv6Cidrs),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      network = pulumi.Input.asInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      subnetId = pulumi.Input.asInput<String>(subnetId),
      vlanId = pulumi.Input.asOptionalInput<int>(vlanId),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ipv4Cidrs': ?ipv4Cidrs,
      'ipv6Cidrs': ?ipv6Cidrs,
      'labels': ?labels,
      'location': location,
      'network': network,
      'project': ?project,
      'subnetId': subnetId,
      'vlanId': ?vlanId,
      'zone': zone,
    };
  }

  factory SubnetArgs.fromMap(Map<String, dynamic> map) {
    return SubnetArgs(
      description: map['description'] == null ? null : map['description'] as String,
      ipv4Cidrs: map['ipv4Cidrs'] == null ? null : (map['ipv4Cidrs'] as List).cast<String>(),
      ipv6Cidrs: map['ipv6Cidrs'] == null ? null : (map['ipv6Cidrs'] as List).cast<String>(),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      network: map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      subnetId: map['subnetId'] as String,
      vlanId: map['vlanId'] == null ? null : map['vlanId'] as int,
      zone: map['zone'] as String,
    );
  }
}

