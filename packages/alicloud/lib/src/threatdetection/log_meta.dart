import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_meta_args.dart';

/// ## Import
///
/// Threat Detection Log Meta can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/logMeta:LogMeta example <id>
/// ```
class LogMeta extends pulumi.CustomResource {
  /// The name of the exclusive Logstore where logs are stored. Value:
  /// - aegis-log-client: client event log
  /// - aegis-log-crack: Brute Force log
  /// - aegis-log-dns-query:DNS request log
  /// - aegis-log-login: login log
  /// - aegis-log-network: network connection log
  /// - aegis-log-process: process startup log
  /// - aegis-snapshot-host: account snapshot log
  /// - aegis-snapshot-port: port snapshot log
  /// - aegis-snapshot-process: process snapshot log
  /// - local-dns: local DNS log
  /// - sas-log-dns:DNS resolution log
  /// - sas-log-http:WEB access log
  /// - sas-log-session: Web session log
  /// - sas-security-log: alarm log
  /// - sas-vul-log: Vulnerability log
  /// - sas-cspm-log: Cloud platform configuration check log
  /// - sas-hc-log: baseline log
  /// - sas-rasp-log: Application Protection Log
  /// - sas-filedetect-log: file detection log
  /// - sas-net-block: Network Defense Log
  late final pulumi.Output<String> logMetaName;
  /// The status of the resource
  late final pulumi.Output<String> status;

  /// Creates a new [LogMeta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogMeta]. {@macro pulumi_threatdetection_log_meta_log_meta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogMeta(
    String name, {
    LogMetaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/logMeta:LogMeta',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.logMetaName = registerOutput<String>('logMetaName');
    this.status = registerOutput<String>('status');
  }
}
