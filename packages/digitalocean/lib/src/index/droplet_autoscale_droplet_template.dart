// ignore_for_file: unused_element, unnecessary_cast


class DropletAutoscaleDropletTemplate {
  /// Image slug of the Droplet Autoscale pool underlying resource(s).
  final String image;
  /// Boolean flag to enable IPv6 networking on the Droplet Autoscale pool underlying resource(s).
  final bool? ipv6;
  /// Project UUID to create the Droplet Autoscale pool underlying resource(s).
  final String? projectId;
  /// Region slug of the Droplet Autoscale pool underlying resource(s).
  final String region;
  /// Size slug of the Droplet Autoscale pool underlying resource(s).
  final String size;
  /// SSH fingerprints to add to the Droplet Autoscale pool underlying resource(s).
  final List<String> sshKeys;
  /// List of tags to add to the Droplet Autoscale pool underlying resource(s).
  final List<String>? tags;
  /// Custom user data that can be added to the Droplet Autoscale pool underlying resource(s). This can be a
  /// cloud init script that user may configure to setup their application workload.
  final String? userData;
  /// VPC UUID to create the Droplet Autoscale pool underlying resource(s). If not provided, this is inferred
  /// from the specified `region` (default VPC).
  final String? vpcUuid;
  /// Boolean flag to enable metric agent on the Droplet Autoscale pool underlying resource(s). The
  /// metric agent enables collecting resource utilization metrics, which allows making resource based scaling decisions.
  final bool? withDropletAgent;

  /// Creates a new [DropletAutoscaleDropletTemplate].
  /// [image] Image slug of the Droplet Autoscale pool underlying resource(s).
  /// [ipv6] Boolean flag to enable IPv6 networking on the Droplet Autoscale pool underlying resource(s).
  /// [projectId] Project UUID to create the Droplet Autoscale pool underlying resource(s).
  /// [region] Region slug of the Droplet Autoscale pool underlying resource(s).
  /// [size] Size slug of the Droplet Autoscale pool underlying resource(s).
  /// [sshKeys] SSH fingerprints to add to the Droplet Autoscale pool underlying resource(s).
  /// [tags] List of tags to add to the Droplet Autoscale pool underlying resource(s).
  /// [userData] Custom user data that can be added to the Droplet Autoscale pool underlying resource(s). This can be a
  /// [vpcUuid] VPC UUID to create the Droplet Autoscale pool underlying resource(s). If not provided, this is inferred
  /// [withDropletAgent] Boolean flag to enable metric agent on the Droplet Autoscale pool underlying resource(s). The
  DropletAutoscaleDropletTemplate({
    required this.image,
    this.ipv6,
    this.projectId,
    required this.region,
    required this.size,
    required this.sshKeys,
    this.tags,
    this.userData,
    this.vpcUuid,
    this.withDropletAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'ipv6': ?ipv6,
      'projectId': ?projectId,
      'region': region,
      'size': size,
      'sshKeys': sshKeys,
      'tags': ?tags,
      'userData': ?userData,
      'vpcUuid': ?vpcUuid,
      'withDropletAgent': ?withDropletAgent,
    };
  }

  factory DropletAutoscaleDropletTemplate.fromMap(Map<String, dynamic> map) {
    return DropletAutoscaleDropletTemplate(
      image: map['image'] as String,
      ipv6: map['ipv6'] == null ? null : map['ipv6'] as bool,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] as String,
      size: map['size'] as String,
      sshKeys: (map['sshKeys'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      userData: map['userData'] == null ? null : map['userData'] as String,
      vpcUuid: map['vpcUuid'] == null ? null : map['vpcUuid'] as String,
      withDropletAgent: map['withDropletAgent'] == null ? null : map['withDropletAgent'] as bool,
    );
  }
}

