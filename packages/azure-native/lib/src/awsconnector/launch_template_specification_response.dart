// ignore_for_file: unused_element, unnecessary_cast


/// Definition of LaunchTemplateSpecification
class LaunchTemplateSpecificationResponse {
  /// Property id
  final String? id;
  /// The ID of the launch template. You must specify the ``LaunchTemplateID`` or the ``LaunchTemplateName``, but not both.
  final String? launchTemplateId;
  /// The name of the launch template. You must specify the ``LaunchTemplateName`` or the ``LaunchTemplateID``, but not both.
  final String? launchTemplateName;
  /// Property name
  final String? name;
  /// Property version
  final String? version;

  /// Creates a new [LaunchTemplateSpecificationResponse].
  /// [id] Property id
  /// [launchTemplateId] The ID of the launch template. You must specify the ``LaunchTemplateID`` or the ``LaunchTemplateName``, but not both.
  /// [launchTemplateName] The name of the launch template. You must specify the ``LaunchTemplateName`` or the ``LaunchTemplateID``, but not both.
  /// [name] Property name
  /// [version] Property version
  LaunchTemplateSpecificationResponse({
    this.id,
    this.launchTemplateId,
    this.launchTemplateName,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'launchTemplateId': ?launchTemplateId,
      'launchTemplateName': ?launchTemplateName,
      'name': ?name,
      'version': ?version,
    };
  }

  factory LaunchTemplateSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateSpecificationResponse(
      id: map['id'] == null ? null : map['id'] as String,
      launchTemplateId: map['launchTemplateId'] == null ? null : map['launchTemplateId'] as String,
      launchTemplateName: map['launchTemplateName'] == null ? null : map['launchTemplateName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

