import 'package:pulumi/pulumi.dart';
import 'history_args.dart';

/// Creates a History. The returned History will have the id set. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the containing project does not exist
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class History extends CustomResource {
  /// A short human-readable (plain text) name to display in the UI. Maximum of 100 characters. - In response: present if set during create. - In create request: optional
  late final Output<String> displayName;

  /// A unique identifier within a project for this History. Returns INVALID_ARGUMENT if this field is set or overwritten by the caller. - In response always set - In create request: never set
  late final Output<String> historyId;

  /// A name to uniquely identify a history within a project. Maximum of 200 characters. - In response always set - In create request: always set
  late final Output<String> name;
  late final Output<String> project;

  /// A unique request ID for server to detect duplicated requests. For example, a UUID. Optional, but strongly recommended.
  late final Output<String?> requestId;

  /// The platform of the test history. - In response: always set. Returns the platform of the last execution if unknown.
  late final Output<String> testPlatform;

  History(
    String name, {
    HistoryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:toolresults/v1beta3:History',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.historyId = registerOutput<String>('historyId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.testPlatform = registerOutput<String>('testPlatform');
  }
}
