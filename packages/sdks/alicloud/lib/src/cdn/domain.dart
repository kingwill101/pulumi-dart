import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_auth_config.dart';
import 'domain_certificate_config.dart';
import 'domain_page404_config.dart';
import 'domain_parameter_filter_config.dart';
import 'domain_refer_config.dart';
import 'domain_state.dart';

class Domain extends pulumi.CustomResource {
  late final pulumi.Output<DomainAuthConfig?> authConfig;
  late final pulumi.Output<List<String>?> blockIps;
  late final pulumi.Output<List<Map<String, dynamic>>?> cacheConfigs;
  late final pulumi.Output<String> cdnType;
  late final pulumi.Output<DomainCertificateConfig?> certificateConfig;
  late final pulumi.Output<String> domainName;
  late final pulumi.Output<List<Map<String, dynamic>>?> httpHeaderConfigs;
  late final pulumi.Output<String?> optimizeEnable;
  late final pulumi.Output<DomainPage404Config?> page404Config;
  late final pulumi.Output<String?> pageCompressEnable;
  late final pulumi.Output<DomainParameterFilterConfig?> parameterFilterConfig;
  late final pulumi.Output<String?> rangeEnable;
  late final pulumi.Output<DomainReferConfig?> referConfig;
  late final pulumi.Output<String> scope;
  late final pulumi.Output<int?> sourcePort;
  late final pulumi.Output<String?> sourceType;
  late final pulumi.Output<List<String>?> sources;
  late final pulumi.Output<String?> videoSeekEnable;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_cdn_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(String name, {DomainArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:cdn/domain:Domain',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    authConfig = registerOutput<DomainAuthConfig?>('authConfig');
    blockIps = registerOutput<List<String>?>('blockIps');
    cacheConfigs = registerOutput<List<Map<String, dynamic>>?>('cacheConfigs');
    cdnType = registerOutput<String>('cdnType');
    certificateConfig = registerOutput<DomainCertificateConfig?>(
      'certificateConfig',
    );
    domainName = registerOutput<String>('domainName');
    httpHeaderConfigs = registerOutput<List<Map<String, dynamic>>?>(
      'httpHeaderConfigs',
    );
    optimizeEnable = registerOutput<String?>('optimizeEnable');
    page404Config = registerOutput<DomainPage404Config?>('page404Config');
    pageCompressEnable = registerOutput<String?>('pageCompressEnable');
    parameterFilterConfig = registerOutput<DomainParameterFilterConfig?>(
      'parameterFilterConfig',
    );
    rangeEnable = registerOutput<String?>('rangeEnable');
    referConfig = registerOutput<DomainReferConfig?>('referConfig');
    scope = registerOutput<String>('scope');
    sourcePort = registerOutput<int?>('sourcePort');
    sourceType = registerOutput<String?>('sourceType');
    sources = registerOutput<List<String>?>('sources');
    videoSeekEnable = registerOutput<String?>('videoSeekEnable');
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cdn/domain:Domain',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authConfig = registerOutput<DomainAuthConfig?>('authConfig');
    blockIps = registerOutput<List<String>?>('blockIps');
    cacheConfigs = registerOutput<List<Map<String, dynamic>>?>('cacheConfigs');
    cdnType = registerOutput<String>('cdnType');
    certificateConfig = registerOutput<DomainCertificateConfig?>(
      'certificateConfig',
    );
    domainName = registerOutput<String>('domainName');
    httpHeaderConfigs = registerOutput<List<Map<String, dynamic>>?>(
      'httpHeaderConfigs',
    );
    optimizeEnable = registerOutput<String?>('optimizeEnable');
    page404Config = registerOutput<DomainPage404Config?>('page404Config');
    pageCompressEnable = registerOutput<String?>('pageCompressEnable');
    parameterFilterConfig = registerOutput<DomainParameterFilterConfig?>(
      'parameterFilterConfig',
    );
    rangeEnable = registerOutput<String?>('rangeEnable');
    referConfig = registerOutput<DomainReferConfig?>('referConfig');
    scope = registerOutput<String>('scope');
    sourcePort = registerOutput<int?>('sourcePort');
    sourceType = registerOutput<String?>('sourceType');
    sources = registerOutput<List<String>?>('sources');
    videoSeekEnable = registerOutput<String?>('videoSeekEnable');
  }
}
