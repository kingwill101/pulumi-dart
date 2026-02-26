import 'package:pulumi/pulumi.dart';
import 'namespace_args5.dart';

/// Creates a namespace, and returns the new namespace.
class Namespace5 extends CustomResource {
  /// The timestamp when the namespace was created.
  late final Output<String> createTime;

  /// Optional. Resource labels associated with this namespace. No more than 64 user labels can be associated with a given resource. Label keys and values can be no longer than 63 characters.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`.
  late final Output<String> name;

  /// Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> namespaceId;
  late final Output<String> project;

  /// A globally unique identifier (in UUID4 format) for this namespace.
  late final Output<String> uid;

  /// The timestamp when the namespace was last updated.
  late final Output<String> updateTime;

  Namespace5(
    String name, {
    NamespaceArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:servicedirectory/v1beta1:Namespace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.namespaceId = registerOutput<String>('namespaceId');
    this.project = registerOutput<String>('project');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
