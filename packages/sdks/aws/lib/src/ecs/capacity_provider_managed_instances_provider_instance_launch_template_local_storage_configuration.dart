// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderManagedInstancesProviderInstanceLaunchTemplateLocalStorageConfiguration {
  /// Whether to use the local storage of the instance for Amazon ECS Managed Instances.
  final pulumi.Input<bool>? useLocalStorage;

  /// Creates a new [CapacityProviderManagedInstancesProviderInstanceLaunchTemplateLocalStorageConfiguration].
  /// [useLocalStorage] Whether to use the local storage of the instance for Amazon ECS Managed Instances.
  const CapacityProviderManagedInstancesProviderInstanceLaunchTemplateLocalStorageConfiguration({
    this.useLocalStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'useLocalStorage': ?useLocalStorage,
    };
  }

  factory CapacityProviderManagedInstancesProviderInstanceLaunchTemplateLocalStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return CapacityProviderManagedInstancesProviderInstanceLaunchTemplateLocalStorageConfiguration(
      useLocalStorage: (() { final guardedValue = map['useLocalStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
