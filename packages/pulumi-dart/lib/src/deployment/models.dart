import 'dart:convert';

import 'package:pulumi/src/resource/resource.dart';

import '../pulumirpc/pulumi/resource.pb.dart' as pb;
import '../resource/provider_resource.dart';

/// {@template pulumi.deployment.models.invoke_options}
/// Internal invoke option model passed to deployment runtime code.
/// {@endtemplate}
///
class InvokeOptions {
  final Resource? parent;
  final ProviderResource? provider;
  final String? version;
  final String? pluginDownloadURL;

  InvokeOptions({
    this.parent,
    this.provider,
    this.version,
    this.pluginDownloadURL,
  });
}

/// {@template pulumi.deployment.models.call_options}
/// Internal call option model passed to deployment runtime code.
/// {@endtemplate}
///
class CallOptions {
  final Resource? parent;
  final ProviderResource? provider;
  final String? version;
  final String? pluginDownloadURL;

  CallOptions({
    this.parent,
    this.provider,
    this.version,
    this.pluginDownloadURL,
  });
}

/// {@template pulumi.deployment.models.parameterization}
/// Package parameterization payload for provider packages.
/// {@endtemplate}
///
class Parameterization {
  final String? name;
  final String? version;
  final List<int>? value;

  Parameterization({this.name, this.version, this.value});
}

/// {@template pulumi.deployment.models.register_package_request}
/// Request to register a provider package with the monitor.
/// {@endtemplate}
///
class RegisterPackageRequest {
  final String name;
  final String version;
  final String? downloadUrl;
  final Map<String, List<int>>? checksums;
  final Parameterization? parameterization;
  final Parameterization? extensionParameterization;

  RegisterPackageRequest({
    required this.name,
    required this.version,
    this.downloadUrl,
    this.checksums,
    this.parameterization,
    this.extensionParameterization,
  });

  /// Stable identity used to deduplicate package registration in a deployment.
  String get cacheKey {
    final checksumEntries = checksums?.entries.toList()
      ?..sort((left, right) => left.key.compareTo(right.key));
    Object? encode(Parameterization? value) =>
        value == null ? null : [value.name, value.version, value.value];
    return jsonEncode([
      name,
      version,
      downloadUrl,
      checksumEntries?.map((entry) => [entry.key, entry.value]).toList(),
      encode(parameterization),
      encode(extensionParameterization),
    ]);
  }
}

/// Protobuf conversion helpers for [RegisterPackageRequest].
extension RegisterPackageRequestProto on RegisterPackageRequest {
  pb.RegisterPackageRequest toProto() {
    final request = pb.RegisterPackageRequest()
      ..name = name
      ..version = version;
    if (downloadUrl != null) {
      request.downloadUrl = downloadUrl!;
    }
    if (checksums != null) {
      request.checksums.addAll(checksums!);
    }
    if (parameterization != null) {
      request.parameterization = pb.Parameterization(
        name: parameterization!.name ?? '',
        version: parameterization!.version ?? '',
        value: parameterization!.value ?? const <int>[],
      );
    }
    if (extensionParameterization != null) {
      request.extension_6 = pb.Parameterization(
        name: extensionParameterization!.name ?? '',
        version: extensionParameterization!.version ?? '',
        value: extensionParameterization!.value ?? const <int>[],
      );
    }
    return request;
  }
}
