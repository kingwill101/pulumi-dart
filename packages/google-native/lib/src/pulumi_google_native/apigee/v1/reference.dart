import 'package:pulumi/pulumi.dart';
import 'reference_args.dart';

/// Creates a Reference in the specified environment.
class Reference extends CustomResource {
  /// Optional. A human-readable description of this reference.
  late final Output<String> description;
  late final Output<String> environmentId;

  /// The resource id of this reference. Values must match the regular expression [\w\s\-.]+.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resource_type.
  late final Output<String> refers;

  /// The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  late final Output<String> resourceType;

  Reference(
    String name, {
    ReferenceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Reference',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.refers = registerOutput<String>('refers');
    this.resourceType = registerOutput<String>('resourceType');
  }
}
