// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationProvidersApplicationProviderDisplayData {
  /// Description of the application provider.
  final pulumi.Input<String> description;
  /// Name of the application provider.
  final pulumi.Input<String> displayName;
  /// URL that points to an icon that represents the application provider.
  final pulumi.Input<String> iconUrl;

  /// Creates a new [GetApplicationProvidersApplicationProviderDisplayData].
  /// [description] Description of the application provider.
  /// [displayName] Name of the application provider.
  /// [iconUrl] URL that points to an icon that represents the application provider.
  GetApplicationProvidersApplicationProviderDisplayData({
    required this.description,
    required this.displayName,
    required this.iconUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'iconUrl': iconUrl,
    };
  }

  factory GetApplicationProvidersApplicationProviderDisplayData.fromMap(Map<String, dynamic> map) {
    return GetApplicationProvidersApplicationProviderDisplayData(
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      iconUrl: pulumi.Input.fromValue(map['iconUrl'] as String),
    );
  }
}

