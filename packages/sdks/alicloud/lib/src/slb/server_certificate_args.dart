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

  factory ServerCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ServerCertificateArgs(
      alicloudCertifacteId: (() {
        final guardedValue = map['alicloudCertifacteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alicloudCertifacteName: (() {
        final guardedValue = map['alicloudCertifacteName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alicloudCertificateId: (() {
        final guardedValue = map['alicloudCertificateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alicloudCertificateName: (() {
        final guardedValue = map['alicloudCertificateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      alicloudCertificateRegionId: (() {
        final guardedValue = map['alicloudCertificateRegionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateKey: (() {
        final guardedValue = map['privateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverCertificate: (() {
        final guardedValue = map['serverCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
