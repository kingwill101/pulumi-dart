import 'package:pulumi/pulumi.dart' hide Config;
import 'composite_type_args.dart';
import 'composite_type_label_entry_response.dart';
import 'operation_response2.dart';
import 'template_contents_response.dart';

/// Creates a composite type.
class CompositeType extends CustomResource {
  /// An optional textual description of the resource; provided by the client when the resource is created.
  late final Output<String> description;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> insertTime;

  /// Map of labels; provided by the client when the resource is created or updated. Specifically: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?` Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.
  late final Output<List<CompositeTypeLabelEntryResponse>> labels;

  /// Name of the composite type, must follow the expression: `[a-z]([-a-z0-9_.]{0,61}[a-z0-9])?`.
  late final Output<String> name;

  /// The Operation that most recently ran, or is currently running, on this composite type.
  late final Output<OperationResponse2> operation;
  late final Output<String> project;

  /// Server defined URL for the resource.
  late final Output<String> selfLink;
  late final Output<String> status;

  /// Files for the template type.
  late final Output<TemplateContentsResponse> templateContents;

  CompositeType(
    String name, {
    CompositeTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:deploymentmanager/alpha:CompositeType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String>('description');
    this.insertTime = registerOutput<String>('insertTime');
    this.labels =
        registerOutput<List<CompositeTypeLabelEntryResponse>>('labels');
    this.name = registerOutput<String>('name');
    this.operation = registerOutput<OperationResponse2>('operation');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.status = registerOutput<String>('status');
    this.templateContents =
        registerOutput<TemplateContentsResponse>('templateContents');
  }
}
