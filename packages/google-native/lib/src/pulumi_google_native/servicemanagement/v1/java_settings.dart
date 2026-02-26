// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings.dart';

/// Settings for Java client libraries.
class JavaSettings {
  /// Some settings.
  final CommonLanguageSettings? common;

  /// The package name to use in Java. Clobbers the java_package option set in the protobuf. This should be used **only** by APIs who have already set the language_settings.java.package_name" field in gapic.yaml. API teams should use the protobuf java_package option where possible. Example of a YAML configuration:: publishing: java_settings: library_package: com.google.cloud.pubsub.v1
  final String? libraryPackage;

  /// Configure the Java class name to use instead of the service's for its corresponding generated GAPIC client. Keys are fully-qualified service names as they appear in the protobuf (including the full the language_settings.java.interface_names" field in gapic.yaml. API teams should otherwise use the service name as it appears in the protobuf. Example of a YAML configuration:: publishing: java_settings: service_class_names: - google.pubsub.v1.Publisher: TopicAdmin - google.pubsub.v1.Subscriber: SubscriptionAdmin
  final Map<String, String>? serviceClassNames;

  JavaSettings({
    this.common,
    this.libraryPackage,
    this.serviceClassNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commonValue = common;
    if (commonValue != null) {
      map['common'] = commonValue.toMap();
    }
    final libraryPackageValue = libraryPackage;
    if (libraryPackageValue != null) {
      map['libraryPackage'] = libraryPackageValue;
    }
    final serviceClassNamesValue = serviceClassNames;
    if (serviceClassNamesValue != null) {
      map['serviceClassNames'] = serviceClassNamesValue;
    }
    return map;
  }

  factory JavaSettings.fromMap(Map<String, dynamic> map) {
    return JavaSettings(
      common: map['common'] == null
          ? null
          : CommonLanguageSettings.fromMap(
              (map['common'] as Map).cast<String, dynamic>()),
      libraryPackage: map['libraryPackage'] == null
          ? null
          : map['libraryPackage'] as String,
      serviceClassNames: map['serviceClassNames'] == null
          ? null
          : (map['serviceClassNames'] as Map).cast<String, String>(),
    );
  }
}
