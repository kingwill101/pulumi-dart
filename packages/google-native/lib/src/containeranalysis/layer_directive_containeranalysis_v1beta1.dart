/// Required. The recovered Dockerfile directive used to construct this layer.
enum LayerDirectiveContaineranalysisV1beta1 {
  directiveUnspecified("DIRECTIVE_UNSPECIFIED"),
  maintainer("MAINTAINER"),
  run("RUN"),
  cmd("CMD"),
  label("LABEL"),
  expose("EXPOSE"),
  env("ENV"),
  add("ADD"),
  copy("COPY"),
  entrypoint("ENTRYPOINT"),
  volume("VOLUME"),
  user("USER"),
  workdir("WORKDIR"),
  arg("ARG"),
  onbuild("ONBUILD"),
  stopsignal("STOPSIGNAL"),
  healthcheck("HEALTHCHECK"),
  shell("SHELL");

  const LayerDirectiveContaineranalysisV1beta1(this.value);
  final String value;

  static LayerDirectiveContaineranalysisV1beta1 fromValue(String value) {
    for (final item in LayerDirectiveContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown LayerDirectiveContaineranalysisV1beta1 value: $value');
  }
}
