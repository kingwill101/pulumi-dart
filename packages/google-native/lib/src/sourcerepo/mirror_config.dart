// ignore_for_file: unused_element, unnecessary_cast

/// Configuration to automatically mirror a repository from another hosting service, for example GitHub or Bitbucket.
class MirrorConfig {
  /// ID of the SSH deploy key at the other hosting service. Removing this key from the other service would deauthorize Google Cloud Source Repositories from mirroring.
  final String? deployKeyId;

  /// URL of the main repository at the other hosting service.
  final String? url;

  /// ID of the webhook listening to updates to trigger mirroring. Removing this webhook from the other hosting service will stop Google Cloud Source Repositories from receiving notifications, and thereby disabling mirroring.
  final String? webhookId;

  /// Creates a new [MirrorConfig].
  /// [deployKeyId] ID of the SSH deploy key at the other hosting service. Removing this key from the other service would deauthorize Google Cloud Source Repositories from mirroring.
  /// [url] URL of the main repository at the other hosting service.
  /// [webhookId] ID of the webhook listening to updates to trigger mirroring. Removing this webhook from the other hosting service will stop Google Cloud Source Repositories from receiving notifications, and thereby disabling mirroring.
  MirrorConfig({
    this.deployKeyId,
    this.url,
    this.webhookId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deployKeyIdValue = deployKeyId;
    if (deployKeyIdValue != null) {
      map['deployKeyId'] = deployKeyIdValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    final webhookIdValue = webhookId;
    if (webhookIdValue != null) {
      map['webhookId'] = webhookIdValue;
    }
    return map;
  }

  factory MirrorConfig.fromMap(Map<String, dynamic> map) {
    return MirrorConfig(
      deployKeyId:
          map['deployKeyId'] == null ? null : map['deployKeyId'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      webhookId: map['webhookId'] == null ? null : map['webhookId'] as String,
    );
  }
}
