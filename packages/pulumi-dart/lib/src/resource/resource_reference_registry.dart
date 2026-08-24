import 'resource.dart';

/// Constructs a typed SDK resource for a serialized Pulumi resource reference.
typedef ResourceReferenceFactory = Resource Function(String urn);

/// Registry populated by generated programs for resource-reference hydration.
class ResourceReferenceRegistry {
  static final Map<String, ResourceReferenceFactory> _factories = {};

  /// Registers [factory] for the Pulumi resource [type] token.
  static void register(String type, ResourceReferenceFactory factory) {
    _factories[type] = factory;
  }

  /// Constructs a typed resource reference when its SDK type is registered.
  static Resource? construct(String type, String urn) =>
      _factories[type]?.call(urn);
}
