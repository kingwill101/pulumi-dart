import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_auth_config.dart';
import 'domain_cache_config.dart';
import 'domain_certificate_config.dart';
import 'domain_http_header_config.dart';
import 'domain_page404_config.dart';
import 'domain_parameter_filter_config.dart';
import 'domain_refer_config.dart';

class Domain extends pulumi.CustomResource {
  late final pulumi.Output<DomainAuthConfig?> authConfig;
  late final pulumi.Output<List<String>?> blockIps;
  late final pulumi.Output<List<DomainCacheConfig>?> cacheConfigs;
  late final pulumi.Output<String> cdnType;
  late final pulumi.Output<DomainCertificateConfig?> certificateConfig;
  late final pulumi.Output<String> domainName;
  late final pulumi.Output<List<DomainHttpHeaderConfig>?> httpHeaderConfigs;
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
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cdn/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authConfig = registerOutput<DomainAuthConfig?>('authConfig');
    this.blockIps = registerOutput<List<String>?>('blockIps');
    this.cacheConfigs = registerOutput<List<DomainCacheConfig>?>('cacheConfigs');
    this.cdnType = registerOutput<String>('cdnType');
    this.certificateConfig = registerOutput<DomainCertificateConfig?>('certificateConfig');
    this.domainName = registerOutput<String>('domainName');
    this.httpHeaderConfigs = registerOutput<List<DomainHttpHeaderConfig>?>('httpHeaderConfigs');
    this.optimizeEnable = registerOutput<String?>('optimizeEnable');
    this.page404Config = registerOutput<DomainPage404Config?>('page404Config');
    this.pageCompressEnable = registerOutput<String?>('pageCompressEnable');
    this.parameterFilterConfig = registerOutput<DomainParameterFilterConfig?>('parameterFilterConfig');
    this.rangeEnable = registerOutput<String?>('rangeEnable');
    this.referConfig = registerOutput<DomainReferConfig?>('referConfig');
    this.scope = registerOutput<String>('scope');
    this.sourcePort = registerOutput<int?>('sourcePort');
    this.sourceType = registerOutput<String?>('sourceType');
    this.sources = registerOutput<List<String>?>('sources');
    this.videoSeekEnable = registerOutput<String?>('videoSeekEnable');
  }
}
