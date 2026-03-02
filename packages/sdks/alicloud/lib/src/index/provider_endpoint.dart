// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderEndpoint {
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom acr endpoints.
  final pulumi.Input<String>? acr;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Actiontrail endpoints.
  final pulumi.Input<String>? actiontrail;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom AnalyticDB endpoints.
  final pulumi.Input<String>? adb;
  final pulumi.Input<String>? aiworkspace;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alb endpoints.
  final pulumi.Input<String>? alb;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alidfs endpoints.
  final pulumi.Input<String>? alidfs;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alidns endpoints.
  final pulumi.Input<String>? alidns;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ALIKAFKA endpoints.
  final pulumi.Input<String>? alikafka;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom onsproxy endpoints.
  final pulumi.Input<String>? amqp;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ddosbasic endpoints.
  final pulumi.Input<String>? antiddosPublic;
  final pulumi.Input<String>? apig;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Api Gateway endpoints.
  final pulumi.Input<String>? apigateway;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom arms endpoints.
  final pulumi.Input<String>? arms;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom bastionhost endpoints.
  final pulumi.Input<String>? bastionhost;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom beebot endpoints.
  final pulumi.Input<String>? beebot;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom bpstudio endpoints.
  final pulumi.Input<String>? bpstudio;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom brain_industrial endpoints.
  final pulumi.Input<String>? brainIndustrial;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom BSSOPENAPI endpoints.
  final pulumi.Input<String>? bssopenapi;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom CAS endpoints.
  final pulumi.Input<String>? cas;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cassandra endpoints.
  final pulumi.Input<String>? cassandra;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cbn endpoints.
  final pulumi.Input<String>? cbn;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cbs endpoints.
  final pulumi.Input<String>? cbs;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cddc endpoints.
  final pulumi.Input<String>? cddc;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom CDN endpoints.
  final pulumi.Input<String>? cdn;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cds endpoints.
  final pulumi.Input<String>? cds;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom beebot endpoints.
  final pulumi.Input<String>? chatbot;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom clickhouse endpoints.
  final pulumi.Input<String>? clickhouse;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Api Gateway endpoints.
  final pulumi.Input<String>? cloudapi;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudauth endpoints.
  final pulumi.Input<String>? cloudauth;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudfirewall endpoints.
  final pulumi.Input<String>? cloudfirewall;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudfw endpoints.
  final pulumi.Input<String>? cloudfw;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudphone endpoints.
  final pulumi.Input<String>? cloudphone;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudsso endpoints.
  final pulumi.Input<String>? cloudsso;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Cloud Monitor endpoints.
  final pulumi.Input<String>? cms;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom computenest endpoints.
  final pulumi.Input<String>? computenest;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom config endpoints.
  final pulumi.Input<String>? config;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Container Registry endpoints.
  final pulumi.Input<String>? cr;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Container Service endpoints.
  final pulumi.Input<String>? cs;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom das endpoints.
  final pulumi.Input<String>? das;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Datahub endpoints.
  final pulumi.Input<String>? datahub;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dataworkspublic endpoints.
  final pulumi.Input<String>? dataworksPublic;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dataworkspublic endpoints.
  final pulumi.Input<String>? dataworkspublic;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dbfs endpoints.
  final pulumi.Input<String>? dbfs;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cbs endpoints.
  final pulumi.Input<String>? dbs;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dcdn endpoints.
  final pulumi.Input<String>? dcdn;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ddosbasic endpoints.
  final pulumi.Input<String>? ddosbasic;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DDOSBGP endpoints.
  final pulumi.Input<String>? ddosbgp;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DDOSCOO endpoints.
  final pulumi.Input<String>? ddoscoo;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MongoDB endpoints.
  final pulumi.Input<String>? dds;
  final pulumi.Input<String>? devopsRdc;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom devopsrdc endpoints.
  final pulumi.Input<String>? devopsrdc;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alidfs endpoints.
  final pulumi.Input<String>? dfs;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dg endpoints.
  final pulumi.Input<String>? dg;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dm endpoints.
  final pulumi.Input<String>? dm;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dms_enterprise endpoints.
  final pulumi.Input<String>? dmsEnterprise;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dmsenterprise endpoints.
  final pulumi.Input<String>? dmsenterprise;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DNS endpoints.
  final pulumi.Input<String>? dns;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DRDS endpoints.
  final pulumi.Input<String>? drds;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dts endpoints.
  final pulumi.Input<String>? dts;
  final pulumi.Input<String>? dysms;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dysmsapi endpoints.
  final pulumi.Input<String>? dysmsapi;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eais endpoints.
  final pulumi.Input<String>? eais;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ebs endpoints.
  final pulumi.Input<String>? ebs;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gwsecd endpoints.
  final pulumi.Input<String>? ecd;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eci endpoints.
  final pulumi.Input<String>? eci;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ECS endpoints.
  final pulumi.Input<String>? ecs;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edas endpoints.
  final pulumi.Input<String>? edas;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edasschedulerx endpoints.
  final pulumi.Input<String>? edasschedulerx;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edsuser endpoints.
  final pulumi.Input<String>? edsUser;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edsuser endpoints.
  final pulumi.Input<String>? edsuser;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eflo endpoints.
  final pulumi.Input<String>? eflo;
  final pulumi.Input<String>? efloCnp;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom efloctrl endpoints.
  final pulumi.Input<String>? efloController;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ehpc endpoints.
  final pulumi.Input<String>? ehpc;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ehs endpoints.
  final pulumi.Input<String>? ehs;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eipanycast endpoints.
  final pulumi.Input<String>? eipanycast;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Elasticsearch endpoints.
  final pulumi.Input<String>? elasticsearch;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom EMR endpoints.
  final pulumi.Input<String>? emr;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ens endpoints.
  final pulumi.Input<String>? ens;
  final pulumi.Input<String>? esa;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Autoscaling endpoints.
  final pulumi.Input<String>? ess;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eventbridge_share endpoints.
  final pulumi.Input<String>? eventbridge;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Function Computing endpoints.
  final pulumi.Input<String>? fc;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Function Computing endpoints.
  final pulumi.Input<String>? fcOpen;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom fnf endpoints.
  final pulumi.Input<String>? fnf;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ga endpoints.
  final pulumi.Input<String>? ga;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gaplus endpoints.
  final pulumi.Input<String>? gaplus;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gds endpoints.
  final pulumi.Input<String>? gdb;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gds endpoints.
  final pulumi.Input<String>? gds;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom GPDB endpoints.
  final pulumi.Input<String>? gpdb;
  final pulumi.Input<String>? gwlb;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gwsecd endpoints.
  final pulumi.Input<String>? gwsecd;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom hbr endpoints.
  final pulumi.Input<String>? hbr;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom hcs_sgw endpoints.
  final pulumi.Input<String>? hcsSgw;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom hitsdb endpoints.
  final pulumi.Input<String>? hitsdb;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom imm endpoints.
  final pulumi.Input<String>? imm;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom imp endpoints.
  final pulumi.Input<String>? imp;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ims endpoints.
  final pulumi.Input<String>? ims;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom iot endpoints.
  final pulumi.Input<String>? iot;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom KMS endpoints.
  final pulumi.Input<String>? kms;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom R-KVStore endpoints.
  final pulumi.Input<String>? kvstore;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Location Service endpoints.
  final pulumi.Input<String>? location;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Log Service endpoints.
  final pulumi.Input<String>? log;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Market Place endpoints.
  final pulumi.Input<String>? market;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MaxCompute endpoints.
  final pulumi.Input<String>? maxcompute;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom mhub endpoints.
  final pulumi.Input<String>? mhub;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MNS endpoints.
  final pulumi.Input<String>? mns;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MNS endpoints.
  final pulumi.Input<String>? mnsOpen;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom mscopensubscription endpoints.
  final pulumi.Input<String>? mscopensubscription;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom mse endpoints.
  final pulumi.Input<String>? mse;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom NAS endpoints.
  final pulumi.Input<String>? nas;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom nlb endpoints.
  final pulumi.Input<String>? nlb;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom oceanbase endpoints.
  final pulumi.Input<String>? oceanbase;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom oceanbase endpoints.
  final pulumi.Input<String>? oceanbasepro;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ONS endpoints.
  final pulumi.Input<String>? ons;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom onsproxy endpoints.
  final pulumi.Input<String>? onsproxy;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom oos endpoints.
  final pulumi.Input<String>? oos;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom opensearch endpoints.
  final pulumi.Input<String>? opensearch;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom OSS endpoints.
  final pulumi.Input<String>? oss;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Table Store endpoints.
  final pulumi.Input<String>? ots;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom PolarDB endpoints.
  final pulumi.Input<String>? polardb;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DRDS endpoints.
  final pulumi.Input<String>? polardbx;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom privatelink endpoints.
  final pulumi.Input<String>? privatelink;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Private Zone endpoints.
  final pulumi.Input<String>? pvtz;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom quickbi endpoints.
  final pulumi.Input<String>? quickbi;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom quickbi endpoints.
  final pulumi.Input<String>? quickbiPublic;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom quotas endpoints.
  final pulumi.Input<String>? quotas;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom r_kvstore endpoints.
  final pulumi.Input<String>? rKvstore;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom RAM endpoints.
  final pulumi.Input<String>? ram;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom RDS endpoints.
  final pulumi.Input<String>? rds;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom redisa endpoints.
  final pulumi.Input<String>? redisa;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom resourcemanager endpoints.
  final pulumi.Input<String>? resourcemanager;
  final pulumi.Input<String>? resourcesharing;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom resourcesharing endpoints.
  final pulumi.Input<String>? ressharing;
  final pulumi.Input<String>? rocketmq;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ros endpoints.
  final pulumi.Input<String>? ros;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom serverless endpoints.
  final pulumi.Input<String>? sae;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom sas endpoints.
  final pulumi.Input<String>? sas;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom scdn endpoints.
  final pulumi.Input<String>? scdn;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edasschedulerx endpoints.
  final pulumi.Input<String>? schedulerx2;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom sddp endpoints.
  final pulumi.Input<String>? sddp;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom selectdb endpoints.
  final pulumi.Input<String>? selectdb;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom serverless endpoints.
  final pulumi.Input<String>? serverless;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom srvcatalog endpoints.
  final pulumi.Input<String>? servicecatalog;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom servicemesh endpoints.
  final pulumi.Input<String>? servicemesh;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom sgw endpoints.
  final pulumi.Input<String>? sgw;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom SLB endpoints.
  final pulumi.Input<String>? slb;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom smartag endpoints.
  final pulumi.Input<String>? smartag;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom srvcatalog endpoints.
  final pulumi.Input<String>? srvcatalog;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom STS endpoints.
  final pulumi.Input<String>? sts;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom swas endpoints.
  final pulumi.Input<String>? swas;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom swas endpoints.
  final pulumi.Input<String>? swasOpen;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom tag endpoints.
  final pulumi.Input<String>? tag;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom vod endpoints.
  final pulumi.Input<String>? vod;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom VPC and VPN endpoints.
  final pulumi.Input<String>? vpc;
  final pulumi.Input<String>? vpcipam;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom vpcpeer endpoints.
  final pulumi.Input<String>? vpcpeer;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom vs endpoints.
  final pulumi.Input<String>? vs;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom waf endpoints.
  final pulumi.Input<String>? waf;
  /// Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom waf_openapi endpoints.
  final pulumi.Input<String>? wafOpenapi;

  /// Creates a new [ProviderEndpoint].
  /// [acr] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom acr endpoints.
  /// [actiontrail] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Actiontrail endpoints.
  /// [adb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom AnalyticDB endpoints.
  /// [aiworkspace] Optional.
  /// [alb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alb endpoints.
  /// [alidfs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alidfs endpoints.
  /// [alidns] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alidns endpoints.
  /// [alikafka] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ALIKAFKA endpoints.
  /// [amqp] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom onsproxy endpoints.
  /// [antiddosPublic] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ddosbasic endpoints.
  /// [apig] Optional.
  /// [apigateway] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Api Gateway endpoints.
  /// [arms] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom arms endpoints.
  /// [bastionhost] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom bastionhost endpoints.
  /// [beebot] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom beebot endpoints.
  /// [bpstudio] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom bpstudio endpoints.
  /// [brainIndustrial] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom brain_industrial endpoints.
  /// [bssopenapi] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom BSSOPENAPI endpoints.
  /// [cas] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom CAS endpoints.
  /// [cassandra] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cassandra endpoints.
  /// [cbn] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cbn endpoints.
  /// [cbs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cbs endpoints.
  /// [cddc] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cddc endpoints.
  /// [cdn] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom CDN endpoints.
  /// [cds] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cds endpoints.
  /// [chatbot] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom beebot endpoints.
  /// [clickhouse] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom clickhouse endpoints.
  /// [cloudapi] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Api Gateway endpoints.
  /// [cloudauth] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudauth endpoints.
  /// [cloudfirewall] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudfirewall endpoints.
  /// [cloudfw] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudfw endpoints.
  /// [cloudphone] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudphone endpoints.
  /// [cloudsso] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cloudsso endpoints.
  /// [cms] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Cloud Monitor endpoints.
  /// [computenest] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom computenest endpoints.
  /// [config] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom config endpoints.
  /// [cr] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Container Registry endpoints.
  /// [cs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Container Service endpoints.
  /// [das] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom das endpoints.
  /// [datahub] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Datahub endpoints.
  /// [dataworksPublic] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dataworkspublic endpoints.
  /// [dataworkspublic] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dataworkspublic endpoints.
  /// [dbfs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dbfs endpoints.
  /// [dbs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom cbs endpoints.
  /// [dcdn] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dcdn endpoints.
  /// [ddosbasic] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ddosbasic endpoints.
  /// [ddosbgp] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DDOSBGP endpoints.
  /// [ddoscoo] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DDOSCOO endpoints.
  /// [dds] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MongoDB endpoints.
  /// [devopsRdc] Optional.
  /// [devopsrdc] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom devopsrdc endpoints.
  /// [dfs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom alidfs endpoints.
  /// [dg] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dg endpoints.
  /// [dm] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dm endpoints.
  /// [dmsEnterprise] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dms_enterprise endpoints.
  /// [dmsenterprise] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dmsenterprise endpoints.
  /// [dns] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DNS endpoints.
  /// [drds] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DRDS endpoints.
  /// [dts] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dts endpoints.
  /// [dysms] Optional.
  /// [dysmsapi] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom dysmsapi endpoints.
  /// [eais] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eais endpoints.
  /// [ebs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ebs endpoints.
  /// [ecd] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gwsecd endpoints.
  /// [eci] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eci endpoints.
  /// [ecs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ECS endpoints.
  /// [edas] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edas endpoints.
  /// [edasschedulerx] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edasschedulerx endpoints.
  /// [edsUser] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edsuser endpoints.
  /// [edsuser] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edsuser endpoints.
  /// [eflo] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eflo endpoints.
  /// [efloCnp] Optional.
  /// [efloController] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom efloctrl endpoints.
  /// [ehpc] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ehpc endpoints.
  /// [ehs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ehs endpoints.
  /// [eipanycast] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eipanycast endpoints.
  /// [elasticsearch] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Elasticsearch endpoints.
  /// [emr] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom EMR endpoints.
  /// [ens] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ens endpoints.
  /// [esa] Optional.
  /// [ess] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Autoscaling endpoints.
  /// [eventbridge] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom eventbridge_share endpoints.
  /// [fc] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Function Computing endpoints.
  /// [fcOpen] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Function Computing endpoints.
  /// [fnf] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom fnf endpoints.
  /// [ga] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ga endpoints.
  /// [gaplus] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gaplus endpoints.
  /// [gdb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gds endpoints.
  /// [gds] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gds endpoints.
  /// [gpdb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom GPDB endpoints.
  /// [gwlb] Optional.
  /// [gwsecd] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom gwsecd endpoints.
  /// [hbr] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom hbr endpoints.
  /// [hcsSgw] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom hcs_sgw endpoints.
  /// [hitsdb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom hitsdb endpoints.
  /// [imm] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom imm endpoints.
  /// [imp] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom imp endpoints.
  /// [ims] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ims endpoints.
  /// [iot] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom iot endpoints.
  /// [kms] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom KMS endpoints.
  /// [kvstore] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom R-KVStore endpoints.
  /// [location] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Location Service endpoints.
  /// [log] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Log Service endpoints.
  /// [market] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Market Place endpoints.
  /// [maxcompute] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MaxCompute endpoints.
  /// [mhub] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom mhub endpoints.
  /// [mns] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MNS endpoints.
  /// [mnsOpen] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom MNS endpoints.
  /// [mscopensubscription] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom mscopensubscription endpoints.
  /// [mse] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom mse endpoints.
  /// [nas] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom NAS endpoints.
  /// [nlb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom nlb endpoints.
  /// [oceanbase] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom oceanbase endpoints.
  /// [oceanbasepro] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom oceanbase endpoints.
  /// [ons] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ONS endpoints.
  /// [onsproxy] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom onsproxy endpoints.
  /// [oos] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom oos endpoints.
  /// [opensearch] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom opensearch endpoints.
  /// [oss] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom OSS endpoints.
  /// [ots] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Table Store endpoints.
  /// [polardb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom PolarDB endpoints.
  /// [polardbx] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom DRDS endpoints.
  /// [privatelink] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom privatelink endpoints.
  /// [pvtz] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom Private Zone endpoints.
  /// [quickbi] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom quickbi endpoints.
  /// [quickbiPublic] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom quickbi endpoints.
  /// [quotas] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom quotas endpoints.
  /// [rKvstore] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom r_kvstore endpoints.
  /// [ram] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom RAM endpoints.
  /// [rds] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom RDS endpoints.
  /// [redisa] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom redisa endpoints.
  /// [resourcemanager] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom resourcemanager endpoints.
  /// [resourcesharing] Optional.
  /// [ressharing] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom resourcesharing endpoints.
  /// [rocketmq] Optional.
  /// [ros] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom ros endpoints.
  /// [sae] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom serverless endpoints.
  /// [sas] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom sas endpoints.
  /// [scdn] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom scdn endpoints.
  /// [schedulerx2] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom edasschedulerx endpoints.
  /// [sddp] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom sddp endpoints.
  /// [selectdb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom selectdb endpoints.
  /// [serverless] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom serverless endpoints.
  /// [servicecatalog] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom srvcatalog endpoints.
  /// [servicemesh] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom servicemesh endpoints.
  /// [sgw] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom sgw endpoints.
  /// [slb] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom SLB endpoints.
  /// [smartag] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom smartag endpoints.
  /// [srvcatalog] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom srvcatalog endpoints.
  /// [sts] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom STS endpoints.
  /// [swas] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom swas endpoints.
  /// [swasOpen] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom swas endpoints.
  /// [tag] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom tag endpoints.
  /// [vod] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom vod endpoints.
  /// [vpc] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom VPC and VPN endpoints.
  /// [vpcipam] Optional.
  /// [vpcpeer] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom vpcpeer endpoints.
  /// [vs] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom vs endpoints.
  /// [waf] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom waf endpoints.
  /// [wafOpenapi] Use this to override the default endpoint URL constructed from the `region`. It's typically used to connect to custom waf_openapi endpoints.
  ProviderEndpoint({
    this.acr,
    this.actiontrail,
    this.adb,
    this.aiworkspace,
    this.alb,
    this.alidfs,
    this.alidns,
    this.alikafka,
    this.amqp,
    this.antiddosPublic,
    this.apig,
    this.apigateway,
    this.arms,
    this.bastionhost,
    this.beebot,
    this.bpstudio,
    this.brainIndustrial,
    this.bssopenapi,
    this.cas,
    this.cassandra,
    this.cbn,
    this.cbs,
    this.cddc,
    this.cdn,
    this.cds,
    this.chatbot,
    this.clickhouse,
    this.cloudapi,
    this.cloudauth,
    this.cloudfirewall,
    this.cloudfw,
    this.cloudphone,
    this.cloudsso,
    this.cms,
    this.computenest,
    this.config,
    this.cr,
    this.cs,
    this.das,
    this.datahub,
    this.dataworksPublic,
    this.dataworkspublic,
    this.dbfs,
    this.dbs,
    this.dcdn,
    this.ddosbasic,
    this.ddosbgp,
    this.ddoscoo,
    this.dds,
    this.devopsRdc,
    this.devopsrdc,
    this.dfs,
    this.dg,
    this.dm,
    this.dmsEnterprise,
    this.dmsenterprise,
    this.dns,
    this.drds,
    this.dts,
    this.dysms,
    this.dysmsapi,
    this.eais,
    this.ebs,
    this.ecd,
    this.eci,
    this.ecs,
    this.edas,
    this.edasschedulerx,
    this.edsUser,
    this.edsuser,
    this.eflo,
    this.efloCnp,
    this.efloController,
    this.ehpc,
    this.ehs,
    this.eipanycast,
    this.elasticsearch,
    this.emr,
    this.ens,
    this.esa,
    this.ess,
    this.eventbridge,
    this.fc,
    this.fcOpen,
    this.fnf,
    this.ga,
    this.gaplus,
    this.gdb,
    this.gds,
    this.gpdb,
    this.gwlb,
    this.gwsecd,
    this.hbr,
    this.hcsSgw,
    this.hitsdb,
    this.imm,
    this.imp,
    this.ims,
    this.iot,
    this.kms,
    this.kvstore,
    this.location,
    this.log,
    this.market,
    this.maxcompute,
    this.mhub,
    this.mns,
    this.mnsOpen,
    this.mscopensubscription,
    this.mse,
    this.nas,
    this.nlb,
    this.oceanbase,
    this.oceanbasepro,
    this.ons,
    this.onsproxy,
    this.oos,
    this.opensearch,
    this.oss,
    this.ots,
    this.polardb,
    this.polardbx,
    this.privatelink,
    this.pvtz,
    this.quickbi,
    this.quickbiPublic,
    this.quotas,
    this.rKvstore,
    this.ram,
    this.rds,
    this.redisa,
    this.resourcemanager,
    this.resourcesharing,
    this.ressharing,
    this.rocketmq,
    this.ros,
    this.sae,
    this.sas,
    this.scdn,
    this.schedulerx2,
    this.sddp,
    this.selectdb,
    this.serverless,
    this.servicecatalog,
    this.servicemesh,
    this.sgw,
    this.slb,
    this.smartag,
    this.srvcatalog,
    this.sts,
    this.swas,
    this.swasOpen,
    this.tag,
    this.vod,
    this.vpc,
    this.vpcipam,
    this.vpcpeer,
    this.vs,
    this.waf,
    this.wafOpenapi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acr': ?acr,
      'actiontrail': ?actiontrail,
      'adb': ?adb,
      'aiworkspace': ?aiworkspace,
      'alb': ?alb,
      'alidfs': ?alidfs,
      'alidns': ?alidns,
      'alikafka': ?alikafka,
      'amqp': ?amqp,
      'antiddosPublic': ?antiddosPublic,
      'apig': ?apig,
      'apigateway': ?apigateway,
      'arms': ?arms,
      'bastionhost': ?bastionhost,
      'beebot': ?beebot,
      'bpstudio': ?bpstudio,
      'brainIndustrial': ?brainIndustrial,
      'bssopenapi': ?bssopenapi,
      'cas': ?cas,
      'cassandra': ?cassandra,
      'cbn': ?cbn,
      'cbs': ?cbs,
      'cddc': ?cddc,
      'cdn': ?cdn,
      'cds': ?cds,
      'chatbot': ?chatbot,
      'clickhouse': ?clickhouse,
      'cloudapi': ?cloudapi,
      'cloudauth': ?cloudauth,
      'cloudfirewall': ?cloudfirewall,
      'cloudfw': ?cloudfw,
      'cloudphone': ?cloudphone,
      'cloudsso': ?cloudsso,
      'cms': ?cms,
      'computenest': ?computenest,
      'config': ?config,
      'cr': ?cr,
      'cs': ?cs,
      'das': ?das,
      'datahub': ?datahub,
      'dataworksPublic': ?dataworksPublic,
      'dataworkspublic': ?dataworkspublic,
      'dbfs': ?dbfs,
      'dbs': ?dbs,
      'dcdn': ?dcdn,
      'ddosbasic': ?ddosbasic,
      'ddosbgp': ?ddosbgp,
      'ddoscoo': ?ddoscoo,
      'dds': ?dds,
      'devopsRdc': ?devopsRdc,
      'devopsrdc': ?devopsrdc,
      'dfs': ?dfs,
      'dg': ?dg,
      'dm': ?dm,
      'dmsEnterprise': ?dmsEnterprise,
      'dmsenterprise': ?dmsenterprise,
      'dns': ?dns,
      'drds': ?drds,
      'dts': ?dts,
      'dysms': ?dysms,
      'dysmsapi': ?dysmsapi,
      'eais': ?eais,
      'ebs': ?ebs,
      'ecd': ?ecd,
      'eci': ?eci,
      'ecs': ?ecs,
      'edas': ?edas,
      'edasschedulerx': ?edasschedulerx,
      'edsUser': ?edsUser,
      'edsuser': ?edsuser,
      'eflo': ?eflo,
      'efloCnp': ?efloCnp,
      'efloController': ?efloController,
      'ehpc': ?ehpc,
      'ehs': ?ehs,
      'eipanycast': ?eipanycast,
      'elasticsearch': ?elasticsearch,
      'emr': ?emr,
      'ens': ?ens,
      'esa': ?esa,
      'ess': ?ess,
      'eventbridge': ?eventbridge,
      'fc': ?fc,
      'fcOpen': ?fcOpen,
      'fnf': ?fnf,
      'ga': ?ga,
      'gaplus': ?gaplus,
      'gdb': ?gdb,
      'gds': ?gds,
      'gpdb': ?gpdb,
      'gwlb': ?gwlb,
      'gwsecd': ?gwsecd,
      'hbr': ?hbr,
      'hcsSgw': ?hcsSgw,
      'hitsdb': ?hitsdb,
      'imm': ?imm,
      'imp': ?imp,
      'ims': ?ims,
      'iot': ?iot,
      'kms': ?kms,
      'kvstore': ?kvstore,
      'location': ?location,
      'log': ?log,
      'market': ?market,
      'maxcompute': ?maxcompute,
      'mhub': ?mhub,
      'mns': ?mns,
      'mnsOpen': ?mnsOpen,
      'mscopensubscription': ?mscopensubscription,
      'mse': ?mse,
      'nas': ?nas,
      'nlb': ?nlb,
      'oceanbase': ?oceanbase,
      'oceanbasepro': ?oceanbasepro,
      'ons': ?ons,
      'onsproxy': ?onsproxy,
      'oos': ?oos,
      'opensearch': ?opensearch,
      'oss': ?oss,
      'ots': ?ots,
      'polardb': ?polardb,
      'polardbx': ?polardbx,
      'privatelink': ?privatelink,
      'pvtz': ?pvtz,
      'quickbi': ?quickbi,
      'quickbiPublic': ?quickbiPublic,
      'quotas': ?quotas,
      'rKvstore': ?rKvstore,
      'ram': ?ram,
      'rds': ?rds,
      'redisa': ?redisa,
      'resourcemanager': ?resourcemanager,
      'resourcesharing': ?resourcesharing,
      'ressharing': ?ressharing,
      'rocketmq': ?rocketmq,
      'ros': ?ros,
      'sae': ?sae,
      'sas': ?sas,
      'scdn': ?scdn,
      'schedulerx2': ?schedulerx2,
      'sddp': ?sddp,
      'selectdb': ?selectdb,
      'serverless': ?serverless,
      'servicecatalog': ?servicecatalog,
      'servicemesh': ?servicemesh,
      'sgw': ?sgw,
      'slb': ?slb,
      'smartag': ?smartag,
      'srvcatalog': ?srvcatalog,
      'sts': ?sts,
      'swas': ?swas,
      'swasOpen': ?swasOpen,
      'tag': ?tag,
      'vod': ?vod,
      'vpc': ?vpc,
      'vpcipam': ?vpcipam,
      'vpcpeer': ?vpcpeer,
      'vs': ?vs,
      'waf': ?waf,
      'wafOpenapi': ?wafOpenapi,
    };
  }

  factory ProviderEndpoint.fromMap(Map<String, dynamic> map) {
    return ProviderEndpoint(
      acr: map['acr'] == null ? null : (map['acr']! as String).input(),
      actiontrail: map['actiontrail'] == null ? null : (map['actiontrail']! as String).input(),
      adb: map['adb'] == null ? null : (map['adb']! as String).input(),
      aiworkspace: map['aiworkspace'] == null ? null : (map['aiworkspace']! as String).input(),
      alb: map['alb'] == null ? null : (map['alb']! as String).input(),
      alidfs: map['alidfs'] == null ? null : (map['alidfs']! as String).input(),
      alidns: map['alidns'] == null ? null : (map['alidns']! as String).input(),
      alikafka: map['alikafka'] == null ? null : (map['alikafka']! as String).input(),
      amqp: map['amqp'] == null ? null : (map['amqp']! as String).input(),
      antiddosPublic: map['antiddosPublic'] == null ? null : (map['antiddosPublic']! as String).input(),
      apig: map['apig'] == null ? null : (map['apig']! as String).input(),
      apigateway: map['apigateway'] == null ? null : (map['apigateway']! as String).input(),
      arms: map['arms'] == null ? null : (map['arms']! as String).input(),
      bastionhost: map['bastionhost'] == null ? null : (map['bastionhost']! as String).input(),
      beebot: map['beebot'] == null ? null : (map['beebot']! as String).input(),
      bpstudio: map['bpstudio'] == null ? null : (map['bpstudio']! as String).input(),
      brainIndustrial: map['brainIndustrial'] == null ? null : (map['brainIndustrial']! as String).input(),
      bssopenapi: map['bssopenapi'] == null ? null : (map['bssopenapi']! as String).input(),
      cas: map['cas'] == null ? null : (map['cas']! as String).input(),
      cassandra: map['cassandra'] == null ? null : (map['cassandra']! as String).input(),
      cbn: map['cbn'] == null ? null : (map['cbn']! as String).input(),
      cbs: map['cbs'] == null ? null : (map['cbs']! as String).input(),
      cddc: map['cddc'] == null ? null : (map['cddc']! as String).input(),
      cdn: map['cdn'] == null ? null : (map['cdn']! as String).input(),
      cds: map['cds'] == null ? null : (map['cds']! as String).input(),
      chatbot: map['chatbot'] == null ? null : (map['chatbot']! as String).input(),
      clickhouse: map['clickhouse'] == null ? null : (map['clickhouse']! as String).input(),
      cloudapi: map['cloudapi'] == null ? null : (map['cloudapi']! as String).input(),
      cloudauth: map['cloudauth'] == null ? null : (map['cloudauth']! as String).input(),
      cloudfirewall: map['cloudfirewall'] == null ? null : (map['cloudfirewall']! as String).input(),
      cloudfw: map['cloudfw'] == null ? null : (map['cloudfw']! as String).input(),
      cloudphone: map['cloudphone'] == null ? null : (map['cloudphone']! as String).input(),
      cloudsso: map['cloudsso'] == null ? null : (map['cloudsso']! as String).input(),
      cms: map['cms'] == null ? null : (map['cms']! as String).input(),
      computenest: map['computenest'] == null ? null : (map['computenest']! as String).input(),
      config: map['config'] == null ? null : (map['config']! as String).input(),
      cr: map['cr'] == null ? null : (map['cr']! as String).input(),
      cs: map['cs'] == null ? null : (map['cs']! as String).input(),
      das: map['das'] == null ? null : (map['das']! as String).input(),
      datahub: map['datahub'] == null ? null : (map['datahub']! as String).input(),
      dataworksPublic: map['dataworksPublic'] == null ? null : (map['dataworksPublic']! as String).input(),
      dataworkspublic: map['dataworkspublic'] == null ? null : (map['dataworkspublic']! as String).input(),
      dbfs: map['dbfs'] == null ? null : (map['dbfs']! as String).input(),
      dbs: map['dbs'] == null ? null : (map['dbs']! as String).input(),
      dcdn: map['dcdn'] == null ? null : (map['dcdn']! as String).input(),
      ddosbasic: map['ddosbasic'] == null ? null : (map['ddosbasic']! as String).input(),
      ddosbgp: map['ddosbgp'] == null ? null : (map['ddosbgp']! as String).input(),
      ddoscoo: map['ddoscoo'] == null ? null : (map['ddoscoo']! as String).input(),
      dds: map['dds'] == null ? null : (map['dds']! as String).input(),
      devopsRdc: map['devopsRdc'] == null ? null : (map['devopsRdc']! as String).input(),
      devopsrdc: map['devopsrdc'] == null ? null : (map['devopsrdc']! as String).input(),
      dfs: map['dfs'] == null ? null : (map['dfs']! as String).input(),
      dg: map['dg'] == null ? null : (map['dg']! as String).input(),
      dm: map['dm'] == null ? null : (map['dm']! as String).input(),
      dmsEnterprise: map['dmsEnterprise'] == null ? null : (map['dmsEnterprise']! as String).input(),
      dmsenterprise: map['dmsenterprise'] == null ? null : (map['dmsenterprise']! as String).input(),
      dns: map['dns'] == null ? null : (map['dns']! as String).input(),
      drds: map['drds'] == null ? null : (map['drds']! as String).input(),
      dts: map['dts'] == null ? null : (map['dts']! as String).input(),
      dysms: map['dysms'] == null ? null : (map['dysms']! as String).input(),
      dysmsapi: map['dysmsapi'] == null ? null : (map['dysmsapi']! as String).input(),
      eais: map['eais'] == null ? null : (map['eais']! as String).input(),
      ebs: map['ebs'] == null ? null : (map['ebs']! as String).input(),
      ecd: map['ecd'] == null ? null : (map['ecd']! as String).input(),
      eci: map['eci'] == null ? null : (map['eci']! as String).input(),
      ecs: map['ecs'] == null ? null : (map['ecs']! as String).input(),
      edas: map['edas'] == null ? null : (map['edas']! as String).input(),
      edasschedulerx: map['edasschedulerx'] == null ? null : (map['edasschedulerx']! as String).input(),
      edsUser: map['edsUser'] == null ? null : (map['edsUser']! as String).input(),
      edsuser: map['edsuser'] == null ? null : (map['edsuser']! as String).input(),
      eflo: map['eflo'] == null ? null : (map['eflo']! as String).input(),
      efloCnp: map['efloCnp'] == null ? null : (map['efloCnp']! as String).input(),
      efloController: map['efloController'] == null ? null : (map['efloController']! as String).input(),
      ehpc: map['ehpc'] == null ? null : (map['ehpc']! as String).input(),
      ehs: map['ehs'] == null ? null : (map['ehs']! as String).input(),
      eipanycast: map['eipanycast'] == null ? null : (map['eipanycast']! as String).input(),
      elasticsearch: map['elasticsearch'] == null ? null : (map['elasticsearch']! as String).input(),
      emr: map['emr'] == null ? null : (map['emr']! as String).input(),
      ens: map['ens'] == null ? null : (map['ens']! as String).input(),
      esa: map['esa'] == null ? null : (map['esa']! as String).input(),
      ess: map['ess'] == null ? null : (map['ess']! as String).input(),
      eventbridge: map['eventbridge'] == null ? null : (map['eventbridge']! as String).input(),
      fc: map['fc'] == null ? null : (map['fc']! as String).input(),
      fcOpen: map['fcOpen'] == null ? null : (map['fcOpen']! as String).input(),
      fnf: map['fnf'] == null ? null : (map['fnf']! as String).input(),
      ga: map['ga'] == null ? null : (map['ga']! as String).input(),
      gaplus: map['gaplus'] == null ? null : (map['gaplus']! as String).input(),
      gdb: map['gdb'] == null ? null : (map['gdb']! as String).input(),
      gds: map['gds'] == null ? null : (map['gds']! as String).input(),
      gpdb: map['gpdb'] == null ? null : (map['gpdb']! as String).input(),
      gwlb: map['gwlb'] == null ? null : (map['gwlb']! as String).input(),
      gwsecd: map['gwsecd'] == null ? null : (map['gwsecd']! as String).input(),
      hbr: map['hbr'] == null ? null : (map['hbr']! as String).input(),
      hcsSgw: map['hcsSgw'] == null ? null : (map['hcsSgw']! as String).input(),
      hitsdb: map['hitsdb'] == null ? null : (map['hitsdb']! as String).input(),
      imm: map['imm'] == null ? null : (map['imm']! as String).input(),
      imp: map['imp'] == null ? null : (map['imp']! as String).input(),
      ims: map['ims'] == null ? null : (map['ims']! as String).input(),
      iot: map['iot'] == null ? null : (map['iot']! as String).input(),
      kms: map['kms'] == null ? null : (map['kms']! as String).input(),
      kvstore: map['kvstore'] == null ? null : (map['kvstore']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      log: map['log'] == null ? null : (map['log']! as String).input(),
      market: map['market'] == null ? null : (map['market']! as String).input(),
      maxcompute: map['maxcompute'] == null ? null : (map['maxcompute']! as String).input(),
      mhub: map['mhub'] == null ? null : (map['mhub']! as String).input(),
      mns: map['mns'] == null ? null : (map['mns']! as String).input(),
      mnsOpen: map['mnsOpen'] == null ? null : (map['mnsOpen']! as String).input(),
      mscopensubscription: map['mscopensubscription'] == null ? null : (map['mscopensubscription']! as String).input(),
      mse: map['mse'] == null ? null : (map['mse']! as String).input(),
      nas: map['nas'] == null ? null : (map['nas']! as String).input(),
      nlb: map['nlb'] == null ? null : (map['nlb']! as String).input(),
      oceanbase: map['oceanbase'] == null ? null : (map['oceanbase']! as String).input(),
      oceanbasepro: map['oceanbasepro'] == null ? null : (map['oceanbasepro']! as String).input(),
      ons: map['ons'] == null ? null : (map['ons']! as String).input(),
      onsproxy: map['onsproxy'] == null ? null : (map['onsproxy']! as String).input(),
      oos: map['oos'] == null ? null : (map['oos']! as String).input(),
      opensearch: map['opensearch'] == null ? null : (map['opensearch']! as String).input(),
      oss: map['oss'] == null ? null : (map['oss']! as String).input(),
      ots: map['ots'] == null ? null : (map['ots']! as String).input(),
      polardb: map['polardb'] == null ? null : (map['polardb']! as String).input(),
      polardbx: map['polardbx'] == null ? null : (map['polardbx']! as String).input(),
      privatelink: map['privatelink'] == null ? null : (map['privatelink']! as String).input(),
      pvtz: map['pvtz'] == null ? null : (map['pvtz']! as String).input(),
      quickbi: map['quickbi'] == null ? null : (map['quickbi']! as String).input(),
      quickbiPublic: map['quickbiPublic'] == null ? null : (map['quickbiPublic']! as String).input(),
      quotas: map['quotas'] == null ? null : (map['quotas']! as String).input(),
      rKvstore: map['rKvstore'] == null ? null : (map['rKvstore']! as String).input(),
      ram: map['ram'] == null ? null : (map['ram']! as String).input(),
      rds: map['rds'] == null ? null : (map['rds']! as String).input(),
      redisa: map['redisa'] == null ? null : (map['redisa']! as String).input(),
      resourcemanager: map['resourcemanager'] == null ? null : (map['resourcemanager']! as String).input(),
      resourcesharing: map['resourcesharing'] == null ? null : (map['resourcesharing']! as String).input(),
      ressharing: map['ressharing'] == null ? null : (map['ressharing']! as String).input(),
      rocketmq: map['rocketmq'] == null ? null : (map['rocketmq']! as String).input(),
      ros: map['ros'] == null ? null : (map['ros']! as String).input(),
      sae: map['sae'] == null ? null : (map['sae']! as String).input(),
      sas: map['sas'] == null ? null : (map['sas']! as String).input(),
      scdn: map['scdn'] == null ? null : (map['scdn']! as String).input(),
      schedulerx2: map['schedulerx2'] == null ? null : (map['schedulerx2']! as String).input(),
      sddp: map['sddp'] == null ? null : (map['sddp']! as String).input(),
      selectdb: map['selectdb'] == null ? null : (map['selectdb']! as String).input(),
      serverless: map['serverless'] == null ? null : (map['serverless']! as String).input(),
      servicecatalog: map['servicecatalog'] == null ? null : (map['servicecatalog']! as String).input(),
      servicemesh: map['servicemesh'] == null ? null : (map['servicemesh']! as String).input(),
      sgw: map['sgw'] == null ? null : (map['sgw']! as String).input(),
      slb: map['slb'] == null ? null : (map['slb']! as String).input(),
      smartag: map['smartag'] == null ? null : (map['smartag']! as String).input(),
      srvcatalog: map['srvcatalog'] == null ? null : (map['srvcatalog']! as String).input(),
      sts: map['sts'] == null ? null : (map['sts']! as String).input(),
      swas: map['swas'] == null ? null : (map['swas']! as String).input(),
      swasOpen: map['swasOpen'] == null ? null : (map['swasOpen']! as String).input(),
      tag: map['tag'] == null ? null : (map['tag']! as String).input(),
      vod: map['vod'] == null ? null : (map['vod']! as String).input(),
      vpc: map['vpc'] == null ? null : (map['vpc']! as String).input(),
      vpcipam: map['vpcipam'] == null ? null : (map['vpcipam']! as String).input(),
      vpcpeer: map['vpcpeer'] == null ? null : (map['vpcpeer']! as String).input(),
      vs: map['vs'] == null ? null : (map['vs']! as String).input(),
      waf: map['waf'] == null ? null : (map['waf']! as String).input(),
      wafOpenapi: map['wafOpenapi'] == null ? null : (map['wafOpenapi']! as String).input(),
    );
  }
}

