// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the google-native package.
class GoogleNativeConfig {
  const GoogleNativeConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// Additional user-agent string to append to the default one (<prod_name>/<ver>).
  String? get appendUserAgent {
    final raw = _raw('appendUserAgent');
    return raw;
  }

  bool get appendUserAgentIsSecret => _isSecret('appendUserAgent');

  /// This will disable the Pulumi Partner Name which is used if a custom `partnerName` isn't specified.
  bool? get disablePartnerName {
    final raw = _raw('disablePartnerName');
    return (raw).toBool();
  }

  bool get disablePartnerNameIsSecret => _isSecret('disablePartnerName');

  /// A Google Partner Name to facilitate partner resource usage attribution.
  String? get partnerName {
    final raw = _raw('partnerName');
    return raw;
  }

  bool get partnerNameIsSecret => _isSecret('partnerName');

  /// The default project to manage resources in. If another project is specified on a resource, it will take precedence.
  String? get project {
    final raw = _raw('project');
    return raw;
  }

  bool get projectIsSecret => _isSecret('project');

  /// The default region to manage resources in. If another region is specified on a regional resource, it will take precedence.
  String? get region {
    final raw = _raw('region');
    return raw;
  }

  bool get regionIsSecret => _isSecret('region');

  /// The default zone to manage resources in. Generally, this zone should be within the default region you specified. If another zone is specified on a zonal resource, it will take precedence.
  String? get zone {
    final raw = _raw('zone');
    return raw;
  }

  bool get zoneIsSecret => _isSecret('zone');
}

final config = GoogleNativeConfig();
