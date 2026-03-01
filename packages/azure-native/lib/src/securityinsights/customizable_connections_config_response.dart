// ignore_for_file: unused_element, unnecessary_cast


/// The UiConfig for 'Customizable' connector definition kind.
class CustomizableConnectionsConfigResponse {
  /// Gets or sets the template name. The template includes ARM templates that can be created by the connector, usually it will be the dataConnectors ARM templates.
  final String templateSpecName;
  /// Gets or sets the template version.
  final String templateSpecVersion;

  /// Creates a new [CustomizableConnectionsConfigResponse].
  /// [templateSpecName] Gets or sets the template name. The template includes ARM templates that can be created by the connector, usually it will be the dataConnectors ARM templates.
  /// [templateSpecVersion] Gets or sets the template version.
  CustomizableConnectionsConfigResponse({
    required this.templateSpecName,
    required this.templateSpecVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templateSpecName': templateSpecName,
      'templateSpecVersion': templateSpecVersion,
    };
  }

  factory CustomizableConnectionsConfigResponse.fromMap(Map<String, dynamic> map) {
    return CustomizableConnectionsConfigResponse(
      templateSpecName: map['templateSpecName'] as String,
      templateSpecVersion: map['templateSpecVersion'] as String,
    );
  }
}

