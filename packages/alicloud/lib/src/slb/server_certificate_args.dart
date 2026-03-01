// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_server_certificate_server_certificate_args_doc}
/// The set of arguments for ServerCertificate.
/// {@endtemplate}
/// {@macro pulumi_slb_server_certificate_server_certificate_args_doc}
class ServerCertificateArgs {
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

  /// Creates a new [ServerCertificateArgs].
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
  ServerCertificateArgs({
    String? alicloudCertifacteId,
    String? alicloudCertifacteName,
    String? alicloudCertificateId,
    String? alicloudCertificateName,
    String? alicloudCertificateRegionId,
    String? name,
    String? privateKey,
    String? resourceGroupId,
    String? serverCertificate,
    Map<String, String>? tags,
  }) :
      alicloudCertifacteId = pulumi.Input.asOptionalInput<String>(alicloudCertifacteId),
      alicloudCertifacteName = pulumi.Input.asOptionalInput<String>(alicloudCertifacteName),
      alicloudCertificateId = pulumi.Input.asOptionalInput<String>(alicloudCertificateId),
      alicloudCertificateName = pulumi.Input.asOptionalInput<String>(alicloudCertificateName),
      alicloudCertificateRegionId = pulumi.Input.asOptionalInput<String>(alicloudCertificateRegionId),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      serverCertificate = pulumi.Input.asOptionalInput<String>(serverCertificate),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory ServerCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ServerCertificateArgs(
      alicloudCertifacteId: map['alicloudCertifacteId'] == null ? null : map['alicloudCertifacteId'] as String,
      alicloudCertifacteName: map['alicloudCertifacteName'] == null ? null : map['alicloudCertifacteName'] as String,
      alicloudCertificateId: map['alicloudCertificateId'] == null ? null : map['alicloudCertificateId'] as String,
      alicloudCertificateName: map['alicloudCertificateName'] == null ? null : map['alicloudCertificateName'] as String,
      alicloudCertificateRegionId: map['alicloudCertificateRegionId'] == null ? null : map['alicloudCertificateRegionId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      serverCertificate: map['serverCertificate'] == null ? null : map['serverCertificate'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

