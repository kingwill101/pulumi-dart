// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServerCertificate resources.
class ServerCertificateState {
  final pulumi.Input<String>? alicloudCertifacteId;
  final pulumi.Input<String>? alicloudCertifacteName;
  /// an id of server certificate ssued/proxied by alibaba cloud. but it is not supported on the international site of alibaba cloud now.
  final pulumi.Input<String>? alicloudCertificateId;
  /// the name of the certificate specified by `alicloud_certificate_id`.but it is not supported on the international site of alibaba cloud now.
  final pulumi.Input<String>? alicloudCertificateName;
  /// the region of the certificate specified by `alicloud_certificate_id`. but it is not supported on the international site of alibaba cloud now.
  final pulumi.Input<String>? alicloudCertificateRegionId;
  /// Name of the Server Certificate.
  final pulumi.Input<String>? name;
  /// the content of privat key of the ssl certificate specified by `server_certificate`. where `alicloud_certificate_id` is null, it is required, otherwise it is ignored.
  final pulumi.Input<String>? privateKey;
  /// The Id of resource group which the slb server certificate belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// the content of the ssl certificate. where `alicloud_certificate_id` is null, it is required, otherwise it is ignored.
  final pulumi.Input<String>? serverCertificate;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServerCertificateState].
  /// [alicloudCertifacteId] Optional.
  /// [alicloudCertifacteName] Optional.
  /// [alicloudCertificateId] an id of server certificate ssued/proxied by alibaba cloud. but it is not supported on the international site of alibaba cloud now.
  /// [alicloudCertificateName] the name of the certificate specified by `alicloud_certificate_id`.but it is not supported on the international site of alibaba cloud now.
  /// [alicloudCertificateRegionId] the region of the certificate specified by `alicloud_certificate_id`. but it is not supported on the international site of alibaba cloud now.
  /// [name] Name of the Server Certificate.
  /// [privateKey] the content of privat key of the ssl certificate specified by `server_certificate`. where `alicloud_certificate_id` is null, it is required, otherwise it is ignored.
  /// [resourceGroupId] The Id of resource group which the slb server certificate belongs.
  /// [serverCertificate] the content of the ssl certificate. where `alicloud_certificate_id` is null, it is required, otherwise it is ignored.
  /// [tags] A mapping of tags to assign to the resource.
  ServerCertificateState({
    this.alicloudCertifacteId,
    this.alicloudCertifacteName,
    this.alicloudCertificateId,
    this.alicloudCertificateName,
    this.alicloudCertificateRegionId,
    this.name,
    this.privateKey,
    this.resourceGroupId,
    this.serverCertificate,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alicloudCertifacteId': ?alicloudCertifacteId,
      'alicloudCertifacteName': ?alicloudCertifacteName,
      'alicloudCertificateId': ?alicloudCertificateId,
      'alicloudCertificateName': ?alicloudCertificateName,
      'alicloudCertificateRegionId': ?alicloudCertificateRegionId,
      'name': ?name,
      'privateKey': ?privateKey,
      'resourceGroupId': ?resourceGroupId,
      'serverCertificate': ?serverCertificate,
      'tags': ?tags,
    };
  }

  factory ServerCertificateState.fromMap(Map<String, dynamic> map) {
    return ServerCertificateState(
      alicloudCertifacteId: map['alicloudCertifacteId'] == null ? null : (map['alicloudCertifacteId']! as String).input(),
      alicloudCertifacteName: map['alicloudCertifacteName'] == null ? null : (map['alicloudCertifacteName']! as String).input(),
      alicloudCertificateId: map['alicloudCertificateId'] == null ? null : (map['alicloudCertificateId']! as String).input(),
      alicloudCertificateName: map['alicloudCertificateName'] == null ? null : (map['alicloudCertificateName']! as String).input(),
      alicloudCertificateRegionId: map['alicloudCertificateRegionId'] == null ? null : (map['alicloudCertificateRegionId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      serverCertificate: map['serverCertificate'] == null ? null : (map['serverCertificate']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

