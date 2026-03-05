import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_upload_limit_args.dart';
import 'file_upload_limit_state.dart';

/// ## Import
///
/// Threat Detection File Upload Limit can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/fileUploadLimit:FileUploadLimit example
/// ```
class FileUploadLimit extends pulumi.CustomResource {
  /// File Upload Threshold.
  late final pulumi.Output<int> limit;

  /// Creates a new [FileUploadLimit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileUploadLimit]. {@macro pulumi_threatdetection_file_upload_limit_file_upload_limit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileUploadLimit(
    String name, {
    FileUploadLimitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/fileUploadLimit:FileUploadLimit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    limit = registerOutput<int>('limit');
  }

  /// Gets an existing [FileUploadLimit] resource's state with the given [name] and [id].
  static FileUploadLimit get(
    String name,
    pulumi.Input<String> id, {
    FileUploadLimitState? state,
  }) {
    return FileUploadLimit._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FileUploadLimit._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/fileUploadLimit:FileUploadLimit',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    limit = registerOutput<int>('limit');
  }
}
