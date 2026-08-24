import 'custom_resource.dart';

/// A lightweight custom-resource reference reconstructed from a wire value.
class DependencyCustomResource extends CustomResource {
  final String _urn;

  DependencyCustomResource(this._urn, String id)
    : super(
        _typeFromUrn(_urn),
        _nameFromUrn(_urn),
        const {},
        CustomResourceOptions(),
        dependency: true,
      ) {
    resolveUrn(_urn);
    resolveId(id, isKnown: true);
  }

  @override
  String getResourceType() => _typeFromUrn(_urn);

  @override
  String getResourceName() => _nameFromUrn(_urn);

  static String _typeFromUrn(String urn) {
    final parts = urn.split('::');
    return parts.length > 2 ? parts[2] : 'unknown';
  }

  static String _nameFromUrn(String urn) {
    final parts = urn.split('::');
    return parts.length > 3 ? parts[3] : 'unknown';
  }
}
