// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_browser_signing.dart';
import 'agentcore_browser_certificate.dart';
import 'agentcore_browser_enterprise_policy.dart';
import 'agentcore_browser_network_configuration.dart';
import 'agentcore_browser_recording.dart';
import 'agentcore_browser_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_browser_agentcore_browser_args_doc}
/// The set of arguments for AgentcoreBrowser.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_browser_agentcore_browser_args_doc}
class AgentcoreBrowserArgs {
  /// Browser signing configuration that enables cryptographic agent identification using HTTP message signatures. See `browserSigning` below.
  final pulumi.Input<AgentcoreBrowserBrowserSigning?>? browserSigning;
  /// Certificates to install in the browser. See `certificate` below.
  final pulumi.Input<List<AgentcoreBrowserCertificate>?>? certificates;
  /// Description of the browser.
  final pulumi.Input<String?>? description;
  /// Enterprise policy files to apply to the browser. See `enterprisePolicy` below.
  final pulumi.Input<List<AgentcoreBrowserEnterprisePolicy>?>? enterprisePolicies;
  /// ARN of the IAM role that the browser assumes for execution.
  final pulumi.Input<String?>? executionRoleArn;
  /// Name of the browser.
  final pulumi.Input<String?>? name;
  /// Network configuration for the browser. See `networkConfiguration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreBrowserNetworkConfiguration> networkConfiguration;
  /// Recording configuration for browser sessions. See `recording` below.
  final pulumi.Input<AgentcoreBrowserRecording?>? recording;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<AgentcoreBrowserTimeouts?>? timeouts;

  /// Creates a new [AgentcoreBrowserArgs].
  /// [browserSigning] Browser signing configuration that enables cryptographic agent identification using HTTP message signatures. See `browserSigning` below.
  /// [certificates] Certificates to install in the browser. See `certificate` below.
  /// [description] Description of the browser.
  /// [enterprisePolicies] Enterprise policy files to apply to the browser. See `enterprisePolicy` below.
  /// [executionRoleArn] ARN of the IAM role that the browser assumes for execution.
  /// [name] Name of the browser.
  /// [networkConfiguration] Network configuration for the browser. See `networkConfiguration` below.
  /// [recording] Recording configuration for browser sessions. See `recording` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const AgentcoreBrowserArgs({
    this.browserSigning,
    this.certificates,
    this.description,
    this.enterprisePolicies,
    this.executionRoleArn,
    this.name,
    required this.networkConfiguration,
    this.recording,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'browserSigning': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserBrowserSigning, Map<String, dynamic>>(browserSigning, (value) => value.toMap()),
      'certificates': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreBrowserCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<AgentcoreBrowserCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'enterprisePolicies': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreBrowserEnterprisePolicy>, List<Map<String, dynamic>>>(enterprisePolicies, (value) => pulumi.Input.encodeList<AgentcoreBrowserEnterprisePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionRoleArn': ?executionRoleArn,
      'name': ?name,
      'networkConfiguration': pulumi.Input.mapInputValue<AgentcoreBrowserNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'recording': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserRecording, Map<String, dynamic>>(recording, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreBrowserArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserArgs(
      browserSigning: (() { final guardedValue = map['browserSigning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreBrowserBrowserSigning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreBrowserCertificate>(guardedValue, (value) => AgentcoreBrowserCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enterprisePolicies: (() { final guardedValue = map['enterprisePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreBrowserEnterprisePolicy>(guardedValue, (value) => AgentcoreBrowserEnterprisePolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfiguration: pulumi.Input.fromValue(AgentcoreBrowserNetworkConfiguration.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>())),
      recording: (() { final guardedValue = map['recording']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreBrowserRecording.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreBrowserTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
