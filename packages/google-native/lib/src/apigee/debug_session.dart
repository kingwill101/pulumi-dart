import 'package:pulumi/pulumi.dart' as pulumi;
import 'debug_session_args.dart';

/// Creates a debug session for a deployed API Proxy revision.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class DebugSession extends pulumi.CustomResource {
  late final pulumi.Output<String> apiId;

  /// Optional. The number of request to be traced. Min = 1, Max = 15, Default = 10.
  late final pulumi.Output<int> count;

  /// The first transaction creation timestamp, recorded by UAP.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> environmentId;

  /// Optional. A conditional statement which is evaluated against the request message to determine if it should be traced. Syntax matches that of on API Proxy bundle flow Condition.
  late final pulumi.Output<String> filter;

  /// A unique ID for this DebugSession.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  late final pulumi.Output<String> revisionId;

  /// Optional. The time in seconds after which this DebugSession should end. A timeout specified in DebugSession will overwrite this value.
  late final pulumi.Output<String> timeout;

  /// Optional. The maximum number of bytes captured from the response payload. Min = 0, Max = 5120, Default = 5120.
  late final pulumi.Output<int> tracesize;

  /// Optional. The length of time, in seconds, that this debug session is valid, starting from when it's received in the control plane. Min = 1, Max = 15, Default = 10.
  late final pulumi.Output<int> validity;

  /// Creates a new [DebugSession].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DebugSession]. {@macro pulumi_apigee_v1_debug_session_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DebugSession(
    String name, {
    DebugSessionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:DebugSession',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.count = registerOutput<int>('count');
    this.createTime = registerOutput<String>('createTime');
    this.environmentId = registerOutput<String>('environmentId');
    this.filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.revisionId = registerOutput<String>('revisionId');
    this.timeout = registerOutput<String>('timeout');
    this.tracesize = registerOutput<int>('tracesize');
    this.validity = registerOutput<int>('validity');
  }
}
